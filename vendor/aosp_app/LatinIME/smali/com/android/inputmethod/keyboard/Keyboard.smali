.class public Lcom/android/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field public static final CODE_ACTION_ENTER:I = -0x7

.field public static final CODE_ACTION_NEXT:I = -0x8

.field public static final CODE_ACTION_PREVIOUS:I = -0x9

.field public static final CODE_CLOSING_ANGLE_BRACKET:I = 0x3e

.field public static final CODE_CLOSING_CURLY_BRACKET:I = 0x7d

.field public static final CODE_CLOSING_PARENTHESIS:I = 0x29

.field public static final CODE_CLOSING_SQUARE_BRACKET:I = 0x5d

.field public static final CODE_DASH:I = 0x2d

.field public static final CODE_DELETE:I = -0x4

.field public static final CODE_DOUBLE_QUOTE:I = 0x22

.field public static final CODE_ENTER:I = 0xa

.field public static final CODE_EXCLAMATION_MARK:I = 0x21

.field public static final CODE_LANGUAGE_SWITCH:I = -0xa

.field public static final CODE_OUTPUT_TEXT:I = -0x3

.field public static final CODE_PERIOD:I = 0x2e

.field public static final CODE_QUESTION_MARK:I = 0x3f

.field public static final CODE_RESEARCH:I = -0xb

.field public static final CODE_SETTINGS:I = -0x5

.field public static final CODE_SHIFT:I = -0x1

.field public static final CODE_SHORTCUT:I = -0x6

.field public static final CODE_SINGLE_QUOTE:I = 0x27

.field public static final CODE_SPACE:I = 0x20

.field public static final CODE_SWITCH_ALPHA_SYMBOL:I = -0x2

.field public static final CODE_TAB:I = 0x9

.field public static final CODE_UNSPECIFIED:I = -0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public final mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private final mKeyCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

.field public final mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field public final mMaxMoreKeysKeyboardColumn:I

.field public final mMoreKeysTemplate:I

.field public final mMostCommonKeyHeight:I

.field public final mMostCommonKeyWidth:I

.field public final mOccupiedHeight:I

.field public final mOccupiedWidth:I

.field private final mProximityCharsCorrectionEnabled:Z

.field private final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

.field public final mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

.field public final mThemeId:I

.field public final mTopPadding:I

.field public final mVerticalGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/Keyboard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 11
    .parameter "params"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    .line 130
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 131
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mThemeId:I

    .line 132
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 133
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    .line 134
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 135
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 136
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 137
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMoreKeysKeyboardColumn:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxMoreKeysKeyboardColumn:I

    .line 138
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 139
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    .line 140
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    .line 142
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 143
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 144
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

    .line 146
    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 152
    :try_start_0
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    iget v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    iget v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    iget-object v9, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(Ljava/lang/String;IIIIII[Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v0, tmp:Lcom/android/inputmethod/keyboard/ProximityInfo;
    :goto_0
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 166
    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mProximityCharsCorrectionEnabled:Z

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    .line 167
    return-void

    .line 155
    .end local v0           #tmp:Lcom/android/inputmethod/keyboard/ProximityInfo;
    :catch_0
    move-exception v10

    .line 156
    .local v10, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/inputmethod/keyboard/Keyboard;->TAG:Ljava/lang/String;

    const-string v2, "OutOfMemoryError at ProximityInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createDummyProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v0

    .restart local v0       #tmp:Lcom/android/inputmethod/keyboard/ProximityInfo;
    goto :goto_0
.end method

.method public static isLetterCode(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 221
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printableCode(I)Ljava/lang/String;
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    packed-switch p0, :pswitch_data_0

    .line 259
    :pswitch_0
    if-gtz p0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/Keyboard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown non-positive key code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    const-string v0, "\'\\u%02x\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 245
    :pswitch_1
    const-string v0, "shift"

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v0, "symbol"

    goto :goto_0

    .line 247
    :pswitch_3
    const-string v0, "text"

    goto :goto_0

    .line 248
    :pswitch_4
    const-string v0, "delete"

    goto :goto_0

    .line 249
    :pswitch_5
    const-string v0, "settings"

    goto :goto_0

    .line 250
    :pswitch_6
    const-string v0, "shortcut"

    goto :goto_0

    .line 251
    :pswitch_7
    const-string v0, "actionEnter"

    goto :goto_0

    .line 252
    :pswitch_8
    const-string v0, "actionNext"

    goto :goto_0

    .line 253
    :pswitch_9
    const-string v0, "actionPrevious"

    goto :goto_0

    .line 254
    :pswitch_a
    const-string v0, "languageSwitch"

    goto :goto_0

    .line 255
    :pswitch_b
    const-string v0, "unspec"

    goto :goto_0

    .line 256
    :pswitch_c
    const-string v0, "tab"

    goto :goto_0

    .line 257
    :pswitch_d
    const-string v0, "enter"

    goto :goto_0

    .line 261
    :cond_1
    const/16 v0, 0x100

    if-ge p0, v0, :cond_2

    const-string v0, "\'%c\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "\'\\u%04x\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public getKey(I)Lcom/android/inputmethod/keyboard/Key;
    .locals 9
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 186
    const/16 v6, -0xc

    if-ne p1, v6, :cond_0

    .line 202
    :goto_0
    return-object v5

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    monitor-enter v6

    .line 190
    :try_start_0
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 191
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 192
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/keyboard/Key;

    monitor-exit v6

    goto :goto_0

    .line 203
    .end local v2           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 195
    .restart local v2       #index:I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 196
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    iget v7, v3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-ne v7, p1, :cond_2

    .line 197
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    monitor-exit v6

    move-object v5, v3

    goto :goto_0

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v3           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 238
    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 239
    .local v0, adjustedX:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 240
    .local v1, adjustedY:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    return-object v2
.end method

.method public getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    return-object v0
.end method

.method public hasKey(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 7
    .parameter "aKey"

    .prologue
    const/4 v4, 0x1

    .line 207
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 217
    :goto_0
    return v4

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 212
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-ne v2, p1, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    iget v6, v2, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v2           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasProximityCharsCorrection(I)Z
    .locals 5
    .parameter "code"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    if-nez v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_2
    move v0, v2

    .line 178
    .local v0, canAssumeNativeHasProximityCharsInfoOfAllKeys:Z
    :goto_1
    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0           #canAssumeNativeHasProximityCharsInfoOfAllKeys:Z
    :cond_4
    move v0, v1

    .line 175
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
