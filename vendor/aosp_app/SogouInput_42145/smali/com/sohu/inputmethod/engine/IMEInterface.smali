.class public Lcom/sohu/inputmethod/engine/IMEInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CANDIDATES_CAPACITY:I = 0x40

.field private static final DEBUG:Z = false

.field private static final EMPTY_TEXT:Ljava/lang/String; = ""

.field public static final HIT_CORRECT_CACHE:I = 0x200

.field public static final HIT_CORRECT_KEY:I = 0x4

.field public static final HIT_CORRECT_PLACE_FIRST:I = 0x100

.field public static final HIT_CORRECT_POS:I = 0x80

.field public static final HIT_PINYIN_ARC_END:I = 0x20

.field public static final HIT_PINYIN_ARC_OTHER:I = 0x2

.field public static final HIT_PINYIN_ARC_SYLLABLE:I = 0x1

.field public static final IME_ARC_MATCH_TYPE:I = 0x0

.field public static final IME_ASSOCIATE_DONE:I = 0x47

.field public static final IME_CANDIDATE_CODE:I = 0x4

.field public static final IME_CANDIDATE_PAGE:I = 0x10

.field public static final IME_CANDIDATE_WORD:I = 0x2

.field public static final IME_CAND_DICT_TYPE_CELL:I = 0x7

.field public static final IME_CAND_DICT_TYPE_CLOUD:I = 0xa

.field public static final IME_CAND_DICT_TYPE_CONTACTS:I = 0x8

.field public static final IME_CAND_DICT_TYPE_CORRECT:I = 0x6

.field public static final IME_CAND_DICT_TYPE_EX_USER:I = 0xc

.field public static final IME_CAND_DICT_TYPE_HYBRID:I = 0x4

.field public static final IME_CAND_DICT_TYPE_MAX:I = 0x18

.field public static final IME_CAND_DICT_TYPE_NONE:I = 0x0

.field public static final IME_CAND_DICT_TYPE_PERSON_USER:I = 0xe

.field public static final IME_CAND_DICT_TYPE_PY_SPLIT_INPUT:I = 0x14

.field public static final IME_CAND_DICT_TYPE_PY_SYS_BIGRAM:I = 0x13

.field public static final IME_CAND_DICT_TYPE_PY_SYS_PRED_BIGRAM:I = 0x17

.field public static final IME_CAND_DICT_TYPE_PY_UM:I = 0x10

.field public static final IME_CAND_DICT_TYPE_PY_UM_SYS_USR:I = 0x11

.field public static final IME_CAND_DICT_TYPE_PY_UM_USR:I = 0x12

.field public static final IME_CAND_DICT_TYPE_PY_USR_BIGRAM:I = 0xf

.field public static final IME_CAND_DICT_TYPE_PY_USR_JP:I = 0x15

.field public static final IME_CAND_DICT_TYPE_PY_USR_PRED_BIGRAM:I = 0x16

.field public static final IME_CAND_DICT_TYPE_SENTENCE:I = 0x9

.field public static final IME_CAND_DICT_TYPE_SMILE:I = 0x3

.field public static final IME_CAND_DICT_TYPE_SYS:I = 0x1

.field public static final IME_CAND_DICT_TYPE_SYS_USER:I = 0x2

.field public static final IME_CAND_DICT_TYPE_TR_USER:I = 0xd

.field public static final IME_CAND_DICT_TYPE_USER:I = 0x5

.field public static final IME_CAND_DICT_TYPE_USER_USER:I = 0xb

.field public static final IME_CAND_INFO_DICT_TYPE:I = 0x1

.field public static final IME_CAND_INFO_IS_CHINESE_ASSOCIATION:I = 0x3

.field public static final IME_CAND_INFO_IS_PERSON_NAME:I = 0x4

.field public static final IME_CAND_INFO_LAST_COMMITED_WORD:I = 0x2

.field public static final IME_CAND_INFO_NONE:I = 0x0

.field public static final IME_COMMITTED_DONE:I = 0xf

.field public static final IME_COMMITTED_TEXT:I = 0x8

.field public static final IME_COMMIT_DEFAULT:I = 0x1

.field public static final IME_COMMIT_DIGITS:I = 0x2

.field public static final IME_COMMIT_ORIGIN:I = 0x0

.field public static final IME_COMPOSING_DONE:I = 0x47

.field public static final IME_COMPOSING_TEXT:I = 0x1

.field public static final IME_FIRST_PAGE:I = 0x40

.field public static final IME_INFO_COMMITTED_LENGTH:I = 0x2

.field public static final IME_INFO_CURSOR_LFET_CHAR:I = 0x3

.field public static final IME_INFO_CURSOR_POSITION:I = 0x1

.field public static final IME_INFO_LFET_APOSTROPHE:I = 0x4

.field public static final IME_INFO_OFFSET_INPUT_LENGTH:I = 0x5

.field public static final IME_KEYBOARDS:I = 0x2

.field public static final IME_KEYBOARD_ANY:I = 0x0

.field public static final IME_KEYBOARD_COMPACT_QWERTY:I = 0x3

.field public static final IME_KEYBOARD_CUSTOM:I = 0x6

.field public static final IME_KEYBOARD_MASK:I = 0xff0000

.field public static final IME_KEYBOARD_MIN:I = 0x1

.field public static final IME_KEYBOARD_PHONE:I = 0x1

.field public static final IME_KEYBOARD_QWERTY:I = 0x2

.field public static final IME_KEYBOARD_SP_PHONE:I = 0x5

.field public static final IME_KEYBOARD_SP_QWERTY:I = 0x4

.field public static final IME_LAST_PAGE:I = 0x20

.field public static final IME_MODE_BIHUA_PHONE:I = 0x10003

.field public static final IME_MODE_EN_PHONE:I = 0x10001

.field public static final IME_MODE_EN_QWERTY:I = 0x20001

.field public static final IME_MODE_PY_CORRECT:I = 0x60002

.field public static final IME_MODE_PY_PHONE:I = 0x10002

.field public static final IME_MODE_PY_QWERTY:I = 0x20002

.field public static final IME_MODE_RAW:I = 0x0

.field public static final IME_MODE_SP_PHONE:I = 0x50002

.field public static final IME_MODE_SP_QWERTY:I = 0x40002

.field public static final IME_NAMES:[Ljava/lang/CharSequence; = null

.field private static final IME_OFFSET_KEYBOARD:I = 0x10

.field public static final IME_PAGE_CHANGED:I = 0x12

.field public static final IME_PARAM_CAPSLOCK:I = 0x8

.field public static final IME_PARAM_CLOUD:I = 0xa

.field public static final IME_PARAM_CONTEXT_AWARE_ADJUST:I = 0x11

.field public static final IME_PARAM_CORRECT:I = 0x13

.field public static final IME_PARAM_EDITING:I = 0x5

.field public static final IME_PARAM_ENABLE_CHT:I = 0x6

.field public static final IME_PARAM_ENCODING:I = 0x1

.field public static final IME_PARAM_FUZZY:I = 0x2

.field public static final IME_PARAM_HYBRID_MODE:I = 0xe

.field public static final IME_PARAM_JIANPIN:I = 0x7

.field public static final IME_PARAM_LATIN_SORT:I = 0x4

.field public static final IME_PARAM_LOAD_DUALISTICDICT:I = 0x12

.field public static final IME_PARAM_NAME_INDEFITY_SWITCH:I = 0x15

.field public static final IME_PARAM_NONE:I = 0x0

.field public static final IME_PARAM_PERSON_NAME_MODE:I = 0x10

.field public static final IME_PARAM_PREDICTION:I = 0x3

.field public static final IME_PARAM_PREDICTION_PINYIN:I = 0x14

.field public static final IME_PARAM_RARE_WORDS_SHOW:I = 0xf

.field public static final IME_PARAM_SENTENCE:I = 0x9

.field public static final IME_PREDICTION_NONE:I = 0x0

.field public static final IME_PREDICTION_ONCE:I = 0x1

.field public static final IME_PREDICTION_UNLIMITED:I = -0x1

.field public static final IME_TYPE_BIHUA:I = 0x3

.field private static final IME_TYPE_CHINESE_END:I = 0x4

.field private static final IME_TYPE_CHINESE_START:I = 0x2

.field public static final IME_TYPE_DIGIT:I = -0x1

.field public static final IME_TYPE_EDIT:I = -0x2

.field public static final IME_TYPE_ENGLISH:I = 0x1

.field public static final IME_TYPE_HANDWRITING:I = 0x4

.field public static final IME_TYPE_HANDWRITING_FULLSCREEN:I = 0x5

.field private static final IME_TYPE_LATIN_END:I = 0x1

.field private static final IME_TYPE_LATIN_START:I = 0x0

.field public static final IME_TYPE_MASK:I = 0xff

.field public static final IME_TYPE_MIN:I = -0x2

.field public static final IME_TYPE_NONE:I = 0xff

.field public static final IME_TYPE_PINYIN:I = 0x2

.field public static final IME_TYPE_RAW:I = 0x0

.field public static final IME_TYPE_VOICE:I = 0x6

.field public static final IME_ZUCI_TYPE:I = 0x1

.field public static final MAX_CANDS:I = 0x20

.field public static final MAX_CODES:I = 0x20

.field public static final MAX_CODE_LENGTH:I = 0x10

.field public static final MAX_COMMITPINYIN_LENGTH:I = 0x200

.field public static final MAX_COMPOSING_LENGTH:I = 0x200

.field public static final MAX_CORRECT_RESULT_LENGTH:I = 0x80

.field public static final MAX_WORD_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SogouIME API"

.field public static final TOTAL_IME_NUM:I = 0x3

.field public static buf:[B

.field public static mCloudDownLen:I

.field public static mCloudUploadLen:I

.field private static mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

.field private static mStrokeArray:[Ljava/lang/String;


# instance fields
.field public final IME_ERROR:I

.field public final IME_NO_CLOUD:I

.field public final IME_OK:I

.field public final MAX_CLOUD_INPUT_LENGTH:I

.field public final MAX_CLOUD_OUTPUT_LENGTH:I

.field private mCaFirstWord:[C

.field private mCapacity:I

.field private mCloudCorrect:Ljava/util/List;

.field private mCloudInputBytes:[B

.field public mCloudOutputBytes:[B

.field private mCloudWord:Ljava/util/List;

.field public mCodeSource:Laot;

.field public mComposingSource:Laov;

.field public mComposingSourceDigits:Laov;

.field public mDigitSource:Laot;

.field public mHWCommitedData:Ljava/lang/String;

.field public mHWComposingSource:Laov;

.field private mLastLocalOffset:I

.field private mLocalOffset:I

.field private mNativeContext:I

.field private mOutputBytes:[B

.field private mOutputChars:[C

.field private mOutputCloudChars:[C

.field private mOutputPosX:[S

.field private mOutputPosY:[S

.field public mSogouIMEComposingSource:Laov;

.field public mSourceFromSougIME:Z

.field private mStatus:I

.field private mStringPool:Laze;

.field public mStrokeSource:Laot;

.field public mWordSource:Laot;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 42
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    .line 43
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lmx;->a(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    .line 52
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->buf:[B

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "EDIT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HW"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HWFULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VOICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    .line 1549
    sput v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    .line 1550
    sput v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x200

    const/16 v4, 0x40

    const/16 v3, 0x400

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    .line 66
    new-array v0, v4, [C

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCaFirstWord:[C

    .line 67
    const/16 v0, 0x330

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputBytes:[B

    .line 68
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosX:[S

    .line 69
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosY:[S

    .line 75
    iput v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCapacity:I

    .line 76
    iput v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 77
    iput v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLastLocalOffset:I

    .line 1016
    new-instance v0, Lmq;

    invoke-direct {v0, p0}, Lmq;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mWordSource:Laot;

    .line 1036
    new-instance v0, Lmr;

    invoke-direct {v0, p0}, Lmr;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCodeSource:Laot;

    .line 1056
    new-instance v0, Lms;

    invoke-direct {v0, p0}, Lms;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mDigitSource:Laot;

    .line 1075
    new-instance v0, Lmt;

    invoke-direct {v0, p0}, Lmt;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStrokeSource:Laot;

    .line 1141
    new-instance v0, Lmu;

    invoke-direct {v0, p0}, Lmu;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    .line 1165
    new-instance v0, Lmv;

    invoke-direct {v0, p0}, Lmv;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSourceDigits:Laov;

    .line 1223
    new-instance v0, Lmw;

    invoke-direct {v0, p0}, Lmw;-><init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWComposingSource:Laov;

    .line 1530
    iput v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->MAX_CLOUD_INPUT_LENGTH:I

    .line 1532
    iput v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->MAX_CLOUD_OUTPUT_LENGTH:I

    .line 1534
    const/4 v0, -0x4

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NO_CLOUD:I

    .line 1535
    iput v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_OK:I

    .line 1536
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_ERROR:I

    .line 1539
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    .line 1541
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    .line 1542
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    .line 1544
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    .line 1547
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    .line 704
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->native_setup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    const v2, 0x7f0b0483

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 709
    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1808
    return-void
.end method

.method public static synthetic access$000(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateWords(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public static synthetic access$100(Lcom/sohu/inputmethod/engine/IMEInterface;)Laze;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateCodes(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public static synthetic access$300(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateDigits(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public static synthetic access$400(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateStroke(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public static synthetic access$500(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->updateComposingText(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private addNullCand(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 1271
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    return-void
.end method

.method private appendCandidateCodes(Ljava/util/List;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x10

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidatesNative([CIII)I

    move-result v0

    .line 1098
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCandidates([CILjava/util/List;I)V

    .line 1099
    if-lez v0, :cond_1

    if-lt v0, p2, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->addNullCand(Ljava/util/List;)V

    .line 1102
    :cond_1
    return v0
.end method

.method private appendCandidateDigits(Ljava/util/List;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputText(Ljava/lang/StringBuilder;)I

    move-result v1

    .line 1117
    if-lez v1, :cond_0

    .line 1118
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->addNullCand(Ljava/util/List;)V

    .line 1121
    :cond_0
    return v1
.end method

.method private appendCandidateStroke(Ljava/util/List;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1126
    sget-object v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mStrokeArray:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1127
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->addNullCand(Ljava/util/List;)V

    .line 1129
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStrokeArray:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method private appendCandidateWords(Ljava/util/List;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x20

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidatesNative([CIII)I

    move-result v0

    .line 1107
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCandidates([CILjava/util/List;I)V

    .line 1108
    if-lez v0, :cond_1

    if-lt v0, p2, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 1109
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->addNullCand(Ljava/util/List;)V

    .line 1111
    :cond_1
    return v0
.end method

.method public static convertDictTypeToAssociationType(I)I
    .locals 1
    .parameter

    .prologue
    .line 210
    sparse-switch p0, :sswitch_data_0

    .line 224
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 212
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 216
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 218
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 220
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 222
    :sswitch_5
    const/16 v0, 0x20

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0xf -> :sswitch_5
        0x13 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public static dumpFile(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1817
    :try_start_0
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    :goto_0
    return-void

    .line 1818
    :catch_0
    move-exception v0

    .line 1820
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private native getCandidatesNative([CIII)I
.end method

.method private native getCommitWordPinyinNative([CI)I
.end method

.method private native getComposingTextNative([CI)I
.end method

.method public static final getIMEEngineTypeByIndex(I)I
    .locals 1
    .parameter

    .prologue
    .line 400
    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static final getIMEIndexByType(I)I
    .locals 1
    .parameter

    .prologue
    .line 377
    add-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static final getIMEType(I)I
    .locals 1
    .parameter

    .prologue
    .line 307
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static final getIMETypeByIndex(I)I
    .locals 1
    .parameter

    .prologue
    .line 373
    add-int/lit8 v0, p0, -0x2

    return v0
.end method

.method public static final getIMETypeByName(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 361
    move v0, v1

    :goto_0
    sget-object v2, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 362
    sget-object v2, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    add-int/lit8 v1, v0, -0x2

    .line 367
    :cond_0
    return v1

    .line 361
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getIMETypeText(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 425
    packed-switch p0, :pswitch_data_0

    .line 443
    const-string v0, "UNKNOW"

    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    const-string v0, "IME_TYPE_EDIT"

    goto :goto_0

    .line 429
    :pswitch_1
    const-string v0, "IME_TYPE_DIGIT"

    goto :goto_0

    .line 431
    :pswitch_2
    const-string v0, "IME_TYPE_RAW"

    goto :goto_0

    .line 433
    :pswitch_3
    const-string v0, "IME_TYPE_ENGLISH"

    goto :goto_0

    .line 435
    :pswitch_4
    const-string v0, "IME_TYPE_PINYIN"

    goto :goto_0

    .line 437
    :pswitch_5
    const-string v0, "IME_TYPE_BIHUA"

    goto :goto_0

    .line 439
    :pswitch_6
    const-string v0, "IME_TYPE_HANDWRITING"

    goto :goto_0

    .line 441
    :pswitch_7
    const-string v0, "IME_TYPE_HANDWRITING_FULLSCREEN"

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private native getInputTextNative([C)I
.end method

.method private native getInputTextRelativeXNative([S)I
.end method

.method private native getInputTextRelativeYNative([S)I
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;
    .locals 2
    .parameter

    .prologue
    .line 682
    const-class v1, Lcom/sohu/inputmethod/engine/IMEInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    .line 684
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-static {p0, v0}, Lmx;->a(Landroid/content/Context;Lcom/sohu/inputmethod/engine/IMEInterface;)V

    .line 685
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getStrokeType(Landroid/content/Context;)V

    .line 687
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getKeyCorrectResultNative([CI)I
.end method

.method public static final getKeyboardIndexByType(I)I
    .locals 1
    .parameter

    .prologue
    .line 385
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static getKeyboardType(I)I
    .locals 1
    .parameter

    .prologue
    .line 284
    const/high16 v0, 0xff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static final getKeyboardTypeByIndex(I)I
    .locals 1
    .parameter

    .prologue
    .line 381
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static getModeText(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 409
    sparse-switch p0, :sswitch_data_0

    .line 419
    const-string v0, "Oooooooooooooops!!!!!!!!!!"

    :goto_0
    return-object v0

    .line 411
    :sswitch_0
    const-string v0, "IME_MODE_PY_QWERTY"

    goto :goto_0

    .line 413
    :sswitch_1
    const-string v0, "IME_MODE_PY_PHONE"

    goto :goto_0

    .line 415
    :sswitch_2
    const-string v0, "IME_MODE_EN_QWERTY"

    goto :goto_0

    .line 417
    :sswitch_3
    const-string v0, "IME_MODE_EN_PHONE"

    goto :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_3
        0x10002 -> :sswitch_1
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getNextIMEType(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 391
    if-ltz p0, :cond_1

    if-gt p0, v1, :cond_1

    .line 392
    invoke-static {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getNextIMEType(III)I

    move-result v0

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    if-lt p0, v2, :cond_0

    if-gt p0, v3, :cond_0

    .line 394
    invoke-static {p0, v2, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getNextIMEType(III)I

    move-result v0

    goto :goto_0
.end method

.method public static final getNextIMEType(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    add-int/lit8 v0, p0, 0x1

    sub-int/2addr v0, p1

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private native getNextSuggestKeyEN([C)V
.end method

.method private native getNextSuggestKeyPinyin([C[C[B)I
.end method

.method private native getPosCorrectResultNative([CI)I
.end method

.method private static getStrokeType(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStrokeArray:[Ljava/lang/String;

    .line 693
    return-void
.end method

.method private native getWordData([B)V
.end method

.method private native handleInputNative(II)I
.end method

.method private native handleInputNative(IISS)I
.end method

.method private native handleInputNative([CI)I
.end method

.method public static final hasCandidateCodeViewIMEType(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 357
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isAlphabetMode(I)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyKeyboard(I)Z
    .locals 1
    .parameter

    .prologue
    .line 299
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isBihuaIME(I)Z
    .locals 1
    .parameter

    .prologue
    .line 339
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isChineseIME(I)Z
    .locals 1
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompactQwertyKeyboard(I)Z
    .locals 2
    .parameter

    .prologue
    .line 296
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDigitIME(I)Z
    .locals 1
    .parameter

    .prologue
    .line 345
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableSlideCursor(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 302
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isEnglishIME(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 333
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isHandwritingIME(I)Z
    .locals 1
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isLatinIME(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 326
    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneKeyboard(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 287
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPinyinIME(I)Z
    .locals 1
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPredictionOn(I)Z
    .locals 2
    .parameter

    .prologue
    .line 312
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 313
    if-lez v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQwertyKeyboard(I)Z
    .locals 2
    .parameter

    .prologue
    .line 290
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSpKeyboard(I)Z
    .locals 2
    .parameter

    .prologue
    .line 293
    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isVoiceInputType(I)Z
    .locals 1
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final makeIMEMode(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 271
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public static final makeIMEModeByIME(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardType(I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->makeIMEMode(II)I

    move-result v0

    return v0
.end method

.method public static final makeIMEModeByKeyboard(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEType(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->makeIMEMode(II)I

    move-result v0

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup(Landroid/content/Context;)Z
.end method

.method private native refreshCandidatesNative()I
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 696
    const-class v1, Lcom/sohu/inputmethod/engine/IMEInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->release()V

    .line 699
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit v1

    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native resetNative()V
.end method

.method private native setModeNative(I)I
.end method

.method private spitCloudCorrectData(Ljava/util/List;[CII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1685
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-gez p3, :cond_2

    :cond_0
    move v0, v1

    .line 1698
    :cond_1
    return v0

    .line 1687
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move v2, v1

    .line 1690
    :goto_0
    if-ge v2, p3, :cond_1

    .line 1691
    aget-char v3, p2, p4

    if-lez v3, :cond_3

    .line 1692
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 1690
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1694
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private spitCloudResult(Ljava/util/List;[CII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x200

    const/4 v1, 0x0

    .line 1703
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move v0, v1

    .line 1732
    :goto_0
    return v0

    .line 1705
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move v4, v1

    move v0, p4

    .line 1710
    :goto_1
    if-ge v4, p3, :cond_5

    .line 1712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    move v3, v0

    .line 1713
    :goto_2
    if-ge v3, v7, :cond_4

    .line 1714
    aget-char v6, p2, v3

    if-eqz v6, :cond_2

    .line 1715
    aget-char v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1716
    add-int/lit8 v2, v2, 0x1

    .line 1713
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1718
    :cond_2
    if-lez v2, :cond_3

    .line 1719
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .line 1710
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1726
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1729
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1732
    goto :goto_0
.end method

.method private splitCandidates([CILjava/util/List;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1276
    move v1, v0

    move v2, v0

    .line 1278
    :goto_0
    if-ge v2, p2, :cond_1

    .line 1280
    :try_start_0
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;

    invoke-virtual {v3, p1, v1}, Laze;->a([CI)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1281
    if-eqz v3, :cond_0

    .line 1282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1284
    add-int v4, v2, p4

    invoke-interface {p3, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1278
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v0

    goto :goto_0

    .line 1287
    :cond_0
    add-int v3, v2, p4

    const-string v4, ""

    invoke-interface {p3, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1290
    :catch_0
    move-exception v0

    .line 1293
    :cond_1
    return-void
.end method

.method private splitCorrectResult([CLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1392
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1393
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 1395
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    .line 1396
    aget-char v2, p1, v1

    if-eqz v2, :cond_2

    .line 1397
    aget-char v2, p1, v1

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    .line 1398
    const/4 v0, 0x1

    .line 1395
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    if-eqz v0, :cond_1

    .line 1402
    aget-char v2, p1, v1

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1404
    :cond_1
    aget-char v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1410
    :cond_2
    return-void
.end method

.method public static final supportCloudInput(I)Z
    .locals 1
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportHardKeyboard(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 349
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateComposing(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1207
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1208
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getComposingTextNative([CI)I

    move-result v0

    .line 1209
    if-gtz v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateComposingText(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1193
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->updateComposing(Ljava/lang/StringBuilder;)V

    .line 1195
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1197
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1198
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->updateComposing(Ljava/lang/StringBuilder;)V

    .line 1199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1204
    :cond_1
    :goto_0
    return-void

    .line 1200
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1201
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->updateComposing(Ljava/lang/StringBuilder;)V

    .line 1202
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method


# virtual methods
.method public native associate(Ljava/lang/String;)I
.end method

.method public native buildCellDict([[BIIILjava/lang/String;[BZ)I
.end method

.method public native buildUpdateApp([B[B[B)I
.end method

.method public native clearWriteBackTimeNative()V
.end method

.method public native cloudPredict([BI[C)I
.end method

.method public native decideAddressType(Ljava/lang/String;)I
.end method

.method public native deleteWord(I)I
.end method

.method public destroyCloudInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1570
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v0, :cond_0

    .line 1585
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    if-eqz v0, :cond_1

    .line 1577
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    if-eqz v0, :cond_2

    .line 1579
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1581
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    .line 1582
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1583
    iput-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    .line 1584
    :cond_4
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    goto :goto_0
.end method

.method public native endSuccessiveInput()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->native_finalize()V

    return-void
.end method

.method public native getCandidateInfo(II)I
.end method

.method public native getCandidateProbableNumNative()I
.end method

.method public getCellUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    const-string v0, ""

    return-object v0
.end method

.method public native getCloudCacheResult([BI[C)I
.end method

.method public getCloudCacheResult()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1589
    sget-object v2, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    if-nez v2, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return v0

    .line 1591
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    if-nez v2, :cond_2

    .line 1592
    invoke-virtual {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->initCloudInput()V

    .line 1593
    :cond_2
    sget v2, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-lez v2, :cond_0

    .line 1595
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-virtual {p0, v2, v3, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCloudCacheResult([BI[C)I

    move-result v2

    .line 1597
    if-nez v2, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    aget-char v2, v2, v0

    .line 1600
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->spitCloudCorrectData(Ljava/util/List;[CII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1604
    add-int/lit8 v3, v2, 0x1

    .line 1609
    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    iget-object v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->spitCloudResult(Ljava/util/List;[CII)Z

    move-result v2

    .line 1613
    if-eqz v2, :cond_0

    move v0, v1

    .line 1614
    goto :goto_0
.end method

.method public getCloudCorrect()Ljava/util/List;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    return-object v0
.end method

.method public getCloudOutputBytes()[B
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    return-object v0
.end method

.method public native getCloudParameter([BI)I
.end method

.method public getCloudResult()Z
    .locals 6

    .prologue
    const/16 v0, 0x200

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1645
    sget-object v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-eqz v3, :cond_0

    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    if-gez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1680
    :goto_0
    return v0

    .line 1647
    :cond_1
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    if-nez v3, :cond_3

    .line 1648
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->initCloudInput()V

    .line 1652
    :cond_3
    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    if-le v3, v0, :cond_4

    :goto_1
    sput v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    .line 1653
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    new-array v0, v0, [B

    .line 1654
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    sget v4, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1657
    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-virtual {p0, v0, v3, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->cloudPredict([BI[C)I

    move-result v0

    .line 1661
    if-nez v0, :cond_6

    .line 1663
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    aget-char v0, v0, v1

    .line 1665
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->spitCloudCorrectData(Ljava/util/List;[CII)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1667
    goto :goto_0

    .line 1652
    :cond_4
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    goto :goto_1

    .line 1669
    :cond_5
    add-int/lit8 v3, v0, 0x1

    .line 1674
    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    iget-object v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->spitCloudResult(Ljava/util/List;[CII)Z

    move-result v0

    .line 1676
    if-eqz v0, :cond_6

    move v0, v2

    .line 1677
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1680
    goto :goto_0
.end method

.method public getCloudStream()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 1748
    sget-object v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v3, :cond_0

    move v0, v1

    .line 1765
    :goto_0
    return v0

    .line 1750
    :cond_0
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    if-nez v3, :cond_1

    .line 1751
    invoke-virtual {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->initCloudInput()V

    .line 1752
    :cond_1
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    invoke-virtual {p0, v3, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCloudParameter([BI)I

    move-result v3

    .line 1753
    if-eqz v3, :cond_2

    .line 1754
    const/4 v0, -0x1

    sput v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    move v0, v1

    .line 1755
    goto :goto_0

    .line 1757
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iget-object v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 1758
    long-to-int v3, v3

    sput v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    .line 1759
    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-le v3, v0, :cond_3

    :goto_1
    sput v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    .line 1760
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-gtz v0, :cond_4

    move v0, v1

    .line 1761
    goto :goto_0

    .line 1759
    :cond_3
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1765
    goto :goto_0
.end method

.method public native getCloudWhiteDogInfo(I[C)I
.end method

.method public getCloudWhiteDogInfo(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1786
    sget-object v2, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return v0

    .line 1788
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-virtual {p0, p1, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCloudWhiteDogInfo(I[C)I

    move-result v2

    .line 1789
    if-nez v2, :cond_0

    .line 1792
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    aget-char v2, v2, v0

    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    aget-char v3, v3, v1

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, -0x1

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1794
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/sohu/inputmethod/engine/IMEInterface;->spitCloudResult(Ljava/util/List;[CII)Z

    move-result v3

    .line 1796
    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1797
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    move v0, v1

    .line 1798
    goto :goto_0
.end method

.method public getCloudWord()Ljava/util/List;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    return-object v0
.end method

.method public native getComposingInfo(I)I
.end method

.method public getContextAwareAdjustType(I)I
    .locals 1
    .parameter

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isContextAwareAdjustCandidate(I)I

    move-result v0

    return v0
.end method

.method public native getCoreVersion()Ljava/lang/String;
.end method

.method public getFirstCandBeforeCaAdjust(Ljava/lang/StringBuilder;)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1499
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCaFirstWord:[C

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getFirstCandBeforeCaAdjust([C)I

    move-result v3

    move v0, v1

    .line 1501
    :goto_0
    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCaFirstWord:[C

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 1502
    iget-object v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCaFirstWord:[C

    aget-char v4, v4, v0

    if-nez v4, :cond_0

    .line 1507
    :goto_1
    if-gtz v0, :cond_1

    move v0, v2

    .line 1511
    :goto_2
    return v0

    .line 1501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1510
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCaFirstWord:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v0, v3

    .line 1511
    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public native getFirstCandBeforeCaAdjust([C)I
.end method

.method public getFreedomCloudStream()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 1622
    sget-object v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v3, :cond_0

    move v0, v1

    .line 1638
    :goto_0
    return v0

    .line 1624
    :cond_0
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    if-nez v3, :cond_1

    .line 1625
    invoke-virtual {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->initCloudInput()V

    .line 1627
    :cond_1
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    invoke-virtual {p0, v3, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCloudParameter([BI)I

    move-result v3

    .line 1629
    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 1630
    goto :goto_0

    .line 1632
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    iget-object v5, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 1633
    long-to-int v3, v3

    sput v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    .line 1634
    sget v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-le v3, v0, :cond_3

    :goto_1
    sput v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    .line 1636
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-gtz v0, :cond_4

    move v0, v1

    .line 1637
    goto :goto_0

    .line 1634
    :cond_3
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1638
    goto :goto_0
.end method

.method public native getHaveCoreMijiInfo()I
.end method

.method public getInputText(Ljava/lang/StringBuilder;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 958
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 959
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextNative([C)I

    move-result v0

    .line 960
    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 967
    :goto_0
    return v0

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInputText(Ljava/util/ArrayList;)I
    .locals 3
    .parameter

    .prologue
    .line 971
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextNative([C)I

    move-result v1

    .line 972
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 973
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    aget-char v2, v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_0
    return v1
.end method

.method public getInputTextWithPos(Ljava/util/ArrayList;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 979
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextNative([C)I

    move-result v0

    .line 980
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosX:[S

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextRelativeXNative([S)I

    move-result v2

    .line 981
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosY:[S

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextRelativeYNative([S)I

    move-result v3

    .line 982
    if-ne v0, v2, :cond_0

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v1

    .line 989
    :cond_1
    return v0

    .line 984
    :cond_2
    :goto_0
    if-ge v1, v0, :cond_1

    .line 985
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    aget-char v2, v2, v1

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosX:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v2, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputPosY:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getKeyCorrectResult(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyCorrectResultNative([CI)I

    move-result v0

    .line 1366
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    if-eqz v1, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v1, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCorrectResult([CLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1371
    :goto_0
    return v0

    .line 1369
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNextSuggestKey_EN([C)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getNextSuggestKeyEN([C)V

    .line 1007
    return-void
.end method

.method public getNextSuggestKey_Pinyin([C[B)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputTextNative([C)I

    move-result v0

    .line 1011
    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 1012
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getNextSuggestKeyPinyin([C[C[B)I

    move-result v0

    goto :goto_0
.end method

.method public getPosCorrectResult(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getPosCorrectResultNative([CI)I

    move-result v0

    .line 1383
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v1, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCorrectResult([CLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1388
    :goto_0
    return v0

    .line 1386
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public native getPseudoTimeNative()I
.end method

.method public native getResultElementInfo(I)Ljava/lang/String;
.end method

.method public native getResultElementType(II)I
.end method

.method public native getScelInfo([B[C)I
.end method

.method public native getSentenceState()Z
.end method

.method public native getTextPinyin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getUnCommittedLengthNative()I
.end method

.method public getUnCommittedText(Ljava/lang/StringBuilder;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 993
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 994
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getUnCommittedText([C)I

    move-result v0

    .line 995
    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 1002
    :goto_0
    return v0

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public native getUnCommittedText([C)I
.end method

.method public getWordData()[B
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputBytes:[B

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getWordData([B)V

    .line 954
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputBytes:[B

    return-object v0
.end method

.method public native getWriteBackTimeNative()I
.end method

.method public getmCloudInputBytes()[B
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    return-object v0
.end method

.method public handleInput(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    move-result v0

    .line 832
    const/16 v1, -0xdd

    if-eq p1, v1, :cond_0

    .line 833
    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 835
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLastLocalOffset:I

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 837
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    return v0
.end method

.method public handleInput(IIII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    int-to-short v0, p3

    int-to-short v1, p4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(IISS)I

    move-result v0

    .line 843
    const/16 v1, -0xdd

    if-eq p1, v1, :cond_0

    .line 844
    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 846
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLastLocalOffset:I

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 848
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    return v0
.end method

.method public handleInput([CI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 853
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative([CI)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 854
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    return v0
.end method

.method public handlePageDown(Ljava/util/List;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 895
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCapacity:I

    if-lt v0, v3, :cond_4

    move v0, v1

    .line 899
    :cond_0
    :goto_0
    const/16 v3, -0xde

    invoke-direct {p0, v3, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    move-result v3

    .line 900
    and-int/lit8 v4, v3, 0x12

    if-nez v4, :cond_5

    move v0, v2

    .line 909
    :goto_1
    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;

    invoke-virtual {v0, p1, v2, p2}, Laze;->a(Ljava/util/List;II)I

    .line 911
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    move v2, p2

    .line 914
    :cond_1
    if-nez v1, :cond_2

    .line 915
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x20

    const/4 v4, 0x2

    invoke-direct {p0, v0, v1, p2, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidatesNative([CIII)I

    move-result v0

    .line 916
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v1, v0, p1, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCandidates([CILjava/util/List;I)V

    .line 918
    :cond_2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_3

    .line 919
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->addNullCand(Ljava/util/List;)V

    .line 921
    :cond_3
    return v2

    :cond_4
    move v0, v2

    .line 895
    goto :goto_0

    .line 905
    :cond_5
    iget v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 906
    iget v4, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public handlePageUp(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 925
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCapacity:I

    sub-int/2addr v3, p2

    if-le v0, v3, :cond_2

    move v0, v1

    .line 928
    :cond_0
    :goto_0
    const/16 v3, -0xdf

    invoke-direct {p0, v3, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    move-result v3

    .line 929
    and-int/lit8 v3, v3, 0x12

    if-nez v3, :cond_3

    move v0, v2

    .line 938
    :goto_1
    if-eqz v0, :cond_4

    .line 940
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, p2, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    sub-int/2addr v0, p2

    .line 941
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, p1, v0, v4}, Laze;->a(Ljava/util/List;II)I

    .line 942
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    move v0, p2

    .line 945
    :goto_2
    if-nez v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v3, 0x20

    const/4 v4, 0x2

    invoke-direct {p0, v1, v3, p2, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidatesNative([CIII)I

    move-result v1

    .line 947
    iget-object v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->splitCandidates([CILjava/util/List;I)V

    .line 949
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 925
    goto :goto_0

    .line 934
    :cond_3
    iget v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 935
    iget v3, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    if-gez v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public haveCoreMijiInfo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1413
    invoke-virtual {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getHaveCoreMijiInfo()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native importPosCorrectUsrInfoNative([SIIII)Z
.end method

.method public synchronized native declared-synchronized init()V
.end method

.method public initCloudInput()V
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 1554
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v0, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    if-nez v0, :cond_1

    .line 1557
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudInputBytes:[B

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    if-nez v0, :cond_2

    .line 1559
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudOutputBytes:[B

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    if-nez v0, :cond_3

    .line 1561
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputCloudChars:[C

    .line 1562
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    if-nez v0, :cond_4

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    .line 1564
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    .line 1566
    :cond_5
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    goto :goto_0
.end method

.method public native invalidateCommitWordPinyinNative()I
.end method

.method public native isComposingFullNative()I
.end method

.method public isContextAwareAdjust(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isContextAwareAdjustCandidate(I)I

    move-result v0

    .line 1516
    if-nez v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    .line 1519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native isContextAwareAdjustCandidate(I)I
.end method

.method public native isLastPage()Z
.end method

.method public native learnWord(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native learnWord([B)I
.end method

.method public native loadBigramDict()V
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;[J[J)I
.end method

.method public refresh()I
    .locals 2

    .prologue
    .line 862
    const/16 v0, -0xfe

    const/16 v1, 0x47

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    return v0
.end method

.method public refreshCandidates()I
    .locals 1

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->refreshCandidatesNative()I

    move-result v0

    return v0
.end method

.method public refreshComposing(I)I
    .locals 2
    .parameter

    .prologue
    .line 871
    const/16 v0, -0xfe

    shl-int/lit8 v1, p1, 0x10

    or-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 872
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    return v0
.end method

.method public refreshComposingWithoutStatus(I)V
    .locals 2
    .parameter

    .prologue
    .line 876
    const/16 v0, -0xfe

    shl-int/lit8 v1, p1, 0x10

    or-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    .line 877
    return-void
.end method

.method public native release()V
.end method

.method public synchronized native declared-synchronized release(Z)V
.end method

.method public native releaseBigramDict()V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 1264
    invoke-direct {p0}, Lcom/sohu/inputmethod/engine/IMEInterface;->resetNative()V

    .line 1265
    return-void
.end method

.method public resetCloudInput()V
    .locals 1

    .prologue
    .line 1736
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mIMEInterface:Lcom/sohu/inputmethod/engine/IMEInterface;

    if-nez v0, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    const/4 v0, -0x1

    sput v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    .line 1741
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1742
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudWord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1743
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudCorrect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public resetLocalOffset()V
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLastLocalOffset:I

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 859
    return-void
.end method

.method public native restorLastWord()Z
.end method

.method public restoreSourceState(Ljava/util/List;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    iget v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLastLocalOffset:I

    iput v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mLocalOffset:I

    .line 884
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    add-int/2addr p3, p2

    .line 885
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 886
    const/16 v0, -0xde

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInputNative(II)I

    move-result v0

    .line 887
    and-int/lit8 v0, v0, 0x12

    if-nez v0, :cond_2

    .line 892
    :cond_1
    return-void

    .line 890
    :cond_2
    sub-int/2addr p3, p2

    goto :goto_0
.end method

.method public synchronized native declared-synchronized saveUserDict()V
.end method

.method public native selectDoubleInputSchemeNative(I)V
.end method

.method public setCapacity(I)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput p1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCapacity:I

    .line 723
    return-void
.end method

.method public native setClientPackageName(Ljava/lang/String;)V
.end method

.method public setDeviceParams()V
    .locals 2

    .prologue
    .line 712
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget v1, Laox;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setDeviceParamsNative(II)V

    .line 715
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public native setDeviceParamsNative(II)V
.end method

.method public native setHardHBEnable(Z)I
.end method

.method public final setMode(I)I
    .locals 1
    .parameter

    .prologue
    .line 751
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setModeNative(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setParameter(II)I
.end method

.method public setPool(Laze;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;

    .line 719
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 1812
    iput p1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mStatus:I

    .line 1813
    return-void
.end method

.method public updateCommitWordPinyin(Ljava/lang/StringBuilder;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1215
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1216
    iget-object v0, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCommitWordPinyinNative([CI)I

    move-result v0

    .line 1217
    if-gtz v0, :cond_0

    .line 1219
    :goto_0
    return v0

    .line 1218
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/engine/IMEInterface;->mOutputChars:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
