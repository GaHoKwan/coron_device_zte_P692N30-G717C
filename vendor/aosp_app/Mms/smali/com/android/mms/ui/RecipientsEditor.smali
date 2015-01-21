.class public Lcom/android/mms/ui/RecipientsEditor;
.super Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientEditTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;,
        Lcom/android/mms/ui/RecipientsEditor$AddressValidator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RecipientsEditor"


# instance fields
.field private mChipX:F

.field private mChipY:F

.field private final mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

.field private mIsPointInChip:Z

.field private mLastContact:Lcom/android/mms/data/Contact;

.field private mLastSeparator:C

.field private mLongPressedPosition:I

.field private mOnSelectChipRunnable:Ljava/lang/Runnable;

.field private final mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 74
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsPointInChip:Z

    .line 96
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 99
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-super {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 103
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 105
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 130
    :goto_0
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientsEditor;)C
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/RecipientsEditor;C)C
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-char p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic access$300(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "key"

    .prologue
    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 474
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 479
    :goto_1
    return-object v1

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "field"
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 445
    const-class v4, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 446
    .local v0, a:[Landroid/text/Annotation;
    invoke-static {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, fieldValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 459
    const/16 v4, 0x3c

    invoke-static {v1, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    .line 460
    .local v2, lIndex:I
    if-ltz v2, :cond_0

    .line 461
    const/16 v4, 0x3e

    invoke-static {v1, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    .line 462
    .local v3, rIndex:I
    if-ge v2, v3, :cond_0

    .line 463
    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 468
    .end local v2           #lIndex:I
    .end local v3           #rIndex:I
    :cond_0
    return-object v1
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 410
    const-string v3, "number"

    invoke-static {v3, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 413
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 414
    .local v1, pos:I
    if-ltz v1, :cond_0

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lt v1, v3, :cond_1

    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    const-string v3, "[()]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_2
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 420
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    if-nez v3, :cond_3

    move-object v3, v0

    .line 426
    .end local v1           #pos:I
    .end local v2           #tokens:[Landroid/text/util/Rfc822Token;
    :goto_0
    return-object v3

    .line 423
    .restart local v1       #pos:I
    .restart local v2       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_3
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v1           #pos:I
    .end local v2           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_4
    move-object v3, v0

    .line 426
    goto :goto_0
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 436
    const-class v2, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 437
    .local v0, a:[Landroid/text/Annotation;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 438
    aget-object v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 440
    :cond_0
    return v1
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    .line 701
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 707
    :goto_0
    return v1

    .line 704
    :cond_0
    sget-object v2, Lcom/mediatek/encapsulation/android/util/EncapsulatedPatterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 705
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 706
    .local v1, result:Z
    const-string v2, "Mms/RecipientsEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "number"
    .parameter "isMms"

    .prologue
    .line 214
    if-eqz p2, :cond_1

    .line 215
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    const-string v2, " |-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 225
    .local v0, commonValidValue:Z
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 228
    .local v1, mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/mms/ext/IMmsUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    .end local v0           #commonValidValue:Z
    .end local v1           #mmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private pointToPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 344
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 345
    const/4 v2, -0x1

    .line 356
    :goto_0
    return v2

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 348
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 353
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 354
    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 356
    .local v2, off:I
    goto :goto_0
.end method


# virtual methods
.method public constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 204
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v4

    .line 205
    .local v4, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 206
    .local v2, list:Lcom/android/mms/data/ContactList;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, number:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-direct {v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public constructContactsFromInputWithLimit(ZI)Lcom/android/mms/data/ContactList;
    .locals 13
    .parameter "blocking"
    .parameter "limit"

    .prologue
    .line 637
    const-string v11, "Mms/RecipientsEditor"

    const-string v12, "begin constructContactsFromInputWithLimit"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v11, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v6

    .line 639
    .local v6, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastContact:Lcom/android/mms/data/Contact;

    .line 642
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 643
    .local v10, text:Landroid/text/Spanned;
    const/4 v9, 0x0

    .line 644
    .local v9, spaceCount:I
    const/4 v7, 0x0

    .line 645
    .local v7, pos:I
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    :goto_0
    if-ltz v7, :cond_2

    .line 646
    invoke-interface {v10, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 647
    .local v0, c:C
    const/16 v11, 0x20

    if-ne v0, v11, :cond_1

    .line 648
    add-int/lit8 v9, v9, 0x1

    .line 645
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 651
    :cond_1
    const/16 v11, 0x2c

    if-eq v0, v11, :cond_2

    const/16 v11, 0x3b

    if-ne v0, v11, :cond_0

    .line 655
    .end local v0           #c:C
    :cond_2
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v11

    add-int v12, v7, v9

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_3

    .line 656
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 657
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 658
    .local v8, removedNumber:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_3

    .line 659
    invoke-static {v8, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 660
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v8}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 661
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastContact:Lcom/android/mms/data/Contact;

    .line 666
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v8           #removedNumber:Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 667
    .local v4, list:Lcom/android/mms/data/ContactList;
    const/4 v2, 0x0

    .line 668
    .local v2, count:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 669
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 672
    if-ge v2, p2, :cond_5

    .line 673
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 674
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 678
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    new-instance v1, Lcom/android/mms/data/Contact;

    const/4 v11, 0x1

    invoke-direct {v1, v5, v11}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Z)V

    .line 679
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 683
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v5           #number:Ljava/lang/String;
    :cond_6
    const-string v11, "Mms/RecipientsEditor"

    const-string v12, "end constructContactsFromInputWithLimit"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-object v4
.end method

.method public containsEmail()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v3

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4
    .parameter "isMms"

    .prologue
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 8

    .prologue
    .line 380
    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v6, :cond_3

    .line 381
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 382
    .local v5, text:Landroid/text/Spanned;
    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    if-gt v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsPointInChip:Z

    if-eqz v6, :cond_3

    .line 385
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v7, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v6, v5, v7}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 386
    .local v4, start:I
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v5, v4}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 387
    .local v1, end:I
    const/4 v2, 0x0

    .line 388
    .local v2, isPressedContact:Z
    if-eq v1, v4, :cond_1

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-gt v6, v1, :cond_1

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-lt v6, v4, :cond_1

    .line 389
    const/4 v2, 0x1

    .line 398
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v4, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, number:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 401
    .local v0, c:Lcom/android/mms/data/Contact;
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setEnableDiscardNextActionUp(Z)V

    .line 402
    new-instance v6, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v6, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/data/Contact;)V

    .line 406
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #end:I
    .end local v2           #isPressedContact:Z
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #start:I
    .end local v5           #text:Landroid/text/Spanned;
    :goto_1
    return-object v6

    .line 390
    .restart local v1       #end:I
    .restart local v2       #isPressedContact:Z
    .restart local v4       #start:I
    .restart local v5       #text:Landroid/text/Spanned;
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-lt v6, v4, :cond_2

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-le v6, v1, :cond_0

    .line 391
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v7, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v6, v5, v7}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 392
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v5, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 393
    if-eq v1, v4, :cond_0

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-gt v6, v1, :cond_0

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-lt v6, v4, :cond_0

    .line 394
    const/4 v2, 0x1

    goto :goto_0

    .line 406
    .end local v1           #end:I
    .end local v2           #isPressedContact:Z
    .end local v4           #start:I
    .end local v5           #text:Landroid/text/Spanned;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getLastContactInEditor()Lcom/android/mms/data/Contact;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastContact:Lcom/android/mms/data/Contact;

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4
    .parameter "isMms"

    .prologue
    const/4 v2, 0x1

    .line 247
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 256
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    .line 251
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 256
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)Z
    .locals 3
    .parameter "isMms"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const/4 v2, 0x1

    .line 243
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 629
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 362
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 363
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 365
    .local v2, y:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsPointInChip:Z

    .line 366
    iget-boolean v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mIsPointInChip:Z

    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipX:F

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipY:F

    .line 371
    :cond_0
    if-nez v0, :cond_1

    .line 372
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 375
    :cond_1
    invoke-super {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "list"

    .prologue
    .line 317
    const-string v5, "Mms/RecipientsEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecipientsEditor:populate, list.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 321
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v4, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;

    invoke-direct {v4}, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;-><init>()V

    .line 325
    .local v4, recipientList:Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 328
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    const-string v1, ""

    .line 332
    :cond_1
    new-instance v3, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumberProtosomatic()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v3, recipient:Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;
    const-string v5, "Mms/RecipientsEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecipient, name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumberProtosomatic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4, v3}, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;->addRecipient(Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;)V

    goto :goto_1

    .line 336
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v3           #recipient:Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipient;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientEditTextView;->appendList(Lcom/mediatek/encapsulation/com/android/ex/chips/EncapsulatedMTKRecipientList;)V

    .line 337
    const-string v5, "Mms/RecipientsEditor"

    const-string v6, "RecipientsEditor:populate, end"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnSelectChipRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onSelectChipRunnable"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    .line 176
    return-void
.end method

.method protected updatePressedChip(Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 692
    const-string v0, "Mms/RecipientsEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecipientsEditor:updatePressedChip, mChipX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChipY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipX:F

    iget v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mChipY:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->updatePressedChip(FFLcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;)V

    .line 695
    return-void
.end method
