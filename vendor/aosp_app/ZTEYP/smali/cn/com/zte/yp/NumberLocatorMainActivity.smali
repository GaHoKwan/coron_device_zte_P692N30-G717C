.class public Lcn/com/zte/yp/NumberLocatorMainActivity;
.super Landroid/app/Activity;
.source "NumberLocatorMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/NumberLocatorMainActivity$4;
    }
.end annotation


# instance fields
.field private content:Landroid/content/ContentResolver;

.field private ipNumbers:[Ljava/lang/String;

.field private lastQueryNumber:Ljava/lang/String;

.field private mClearTextButton:Landroid/widget/Button;

.field private mErrorPhoneNumber:Landroid/widget/TextView;

.field mIMManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLawTextView:Landroid/widget/TextView;

.field private mNuminput:Landroid/widget/EditText;

.field private tvAreaCodeValue:Landroid/widget/TextView;

.field private tvCityValue:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 46
    iput-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/yp/NumberLocatorMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/zte/yp/NumberLocatorMainActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/zte/yp/NumberLocatorMainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/zte/yp/NumberLocatorMainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->preProcessInput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/zte/yp/NumberLocatorMainActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcn/com/zte/yp/NumberLocatorMainActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/com/zte/yp/NumberLocatorMainActivity;->filterIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/zte/yp/NumberLocatorMainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcn/com/zte/yp/NumberLocatorMainActivity;Lcn/com/zte/nlt/module/NumberPrefixInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getPrefixFromNumberPrefixInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/zte/yp/NumberLocatorMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->setInvalidNumHint()V

    return-void
.end method

.method private filterIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 180
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 181
    .local v2, ipPrefix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 185
    .end local v2           #ipPrefix:Ljava/lang/String;
    .end local p1
    :cond_0
    return-object p1

    .line 180
    .restart local v2       #ipPrefix:Ljava/lang/String;
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPrefixFromNumberPrefixInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Ljava/lang/String;
    .locals 3
    .parameter "numberPrefix"

    .prologue
    .line 170
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, queryPrefix:Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getType()Lcn/com/zte/nlt/NltConst$NumberType;

    move-result-object v1

    sget-object v2, Lcn/com/zte/nlt/NltConst$NumberType;->PHONE:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne v1, v2, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getType()Lcn/com/zte/nlt/NltConst$NumberType;

    move-result-object v1

    sget-object v2, Lcn/com/zte/nlt/NltConst$NumberType;->INTERNATIONAL:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne v1, v2, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleErrorNum()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->setInvalidNumHint()V

    .line 276
    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->clearAllText()V

    .line 277
    return-void
.end method

.method private preProcessInput()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, origninput:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, filterIput:Ljava/lang/String;
    const-string v3, "(?:/| |-|\\(|\\))"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, filter:Ljava/lang/String;
    return-object v0
.end method

.method private preProcessInputNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 251
    move-object v0, p1

    .line 252
    .local v0, origninput:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origninput = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 254
    :cond_0
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->handleErrorNum()V

    .line 256
    :cond_1
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 258
    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalinput = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method private resetHint()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    return-void
.end method

.method private setCityAndAreaCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "city"
    .parameter "areaCode"

    .prologue
    .line 265
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvCityValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvAreaCodeValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method private setInvalidNumHint()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    return-void
.end method


# virtual methods
.method protected clearAllText()V
    .locals 3

    .prologue
    .line 270
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcn/com/zte/yp/NumberLocatorMainActivity;->setCityAndAreaCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->content:Landroid/content/ContentResolver;

    .line 57
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvCityValue:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0a001a

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvAreaCodeValue:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->tvHint:Landroid/widget/TextView;

    .line 61
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mClearTextButton:Landroid/widget/Button;

    .line 62
    const v3, 0x7f0a0013

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    .line 63
    const v3, 0x7f0a001b

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mLawTextView:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mLawTextView:Landroid/widget/TextView;

    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    new-array v4, v8, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 66
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 67
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setClickable(Z)V

    .line 68
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 69
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 70
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 72
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v4, Lcn/com/zte/yp/NumberLocatorMainActivity$1;

    invoke-direct {v4, p0}, Lcn/com/zte/yp/NumberLocatorMainActivity$1;-><init>(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mClearTextButton:Landroid/widget/Button;

    new-instance v4, Lcn/com/zte/yp/NumberLocatorMainActivity$2;

    invoke-direct {v4, p0}, Lcn/com/zte/yp/NumberLocatorMainActivity$2;-><init>(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v4, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v4, Lcn/com/zte/yp/NumberLocatorMainActivity$3;

    invoke-direct {v4, p0}, Lcn/com/zte/yp/NumberLocatorMainActivity$3;-><init>(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, bunde:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 147
    const-string v3, "phonenum"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, num:Ljava/lang/String;
    iget-object v3, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v2           #num:Ljava/lang/String;
    :cond_0
    move-object v1, p0

    .line 151
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcn/com/zte/yp/statics/StaticsInfo;->collectStatiscs(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 282
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcn/com/zte/nlt/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0038
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method protected queryNumLocation(Ljava/lang/String;)V
    .locals 13
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcn/com/zte/yp/NumberLocatorMainActivity;->preProcessInputNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, origninput:Ljava/lang/String;
    sget-object v0, Lcn/com/zte/nlt/NltConst;->URI_LOCATION:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, locatorurl:Landroid/net/Uri;
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->content:Landroid/content/ContentResolver;

    const-string v5, "internal_query"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 198
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->handleErrorNum()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v9, :cond_1

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    const/4 v8, 0x0

    .line 207
    .local v8, cityname:Ljava/lang/String;
    const/4 v7, 0x0

    .line 209
    .local v7, cardtype:Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "cityname"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 210
    const/4 v0, -0x1

    const-string v2, "cardtype"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 211
    new-instance v0, Ljava/lang/String;

    const-string v2, "cardtype"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 216
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quryNumLocator cardtype=:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :goto_2
    const/4 v6, 0x0

    .line 221
    .local v6, areacode:Ljava/lang/String;
    :try_start_3
    const-string v0, "fixedphone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "areacode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    :goto_3
    invoke-direct {p0, v8, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->setCityAndAreaCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object v11, p0, Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .end local v6           #areacode:Ljava/lang/String;
    .end local v7           #cardtype:Ljava/lang/String;
    .end local v8           #cityname:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_1

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 214
    .restart local v7       #cardtype:Ljava/lang/String;
    .restart local v8       #cityname:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v7, "china"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v10

    .line 218
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 238
    .end local v7           #cardtype:Ljava/lang/String;
    .end local v8           #cityname:Ljava/lang/String;
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 223
    .restart local v6       #areacode:Ljava/lang/String;
    .restart local v7       #cardtype:Ljava/lang/String;
    .restart local v8       #cityname:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v0, "intlphone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "areacode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 226
    :cond_7
    const/4 v12, 0x0

    .line 227
    .local v12, specialNum:Ljava/lang/String;
    const-string v0, "areacode"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 228
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 229
    :cond_8
    const-string v6, ""

    goto :goto_3

    .line 231
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "areacode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto :goto_3
.end method
