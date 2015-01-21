.class public Lcom/android/mms/ui/AdvancedSearchActivity;
.super Landroid/app/Activity;
.source "AdvancedSearchActivity.java"


# static fields
.field private static final BASE_YEAR:I = 0x76c

.field private static final DATA_CERTAIN_ONE_DAY:I = 0x0

.field private static final DATA_CERTAIN_SEVEN_DAY:I = 0x1

.field private static final DATA_CERTAIN_THIRTY_DAY:I = 0x2

.field private static final DATA_PICKER_FROM:I = 0x0

.field private static final DATA_PICKER_TO:I = 0x1

.field private static final ONE_DAY_MILLI_SECOND:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "Mms/AdvancedSearchActivity"


# instance fields
.field private mCertainTimePickerDialog:Landroid/app/AlertDialog;

.field private mCertainTimeSearchButton:Landroid/widget/Button;

.field private mCertainTimeText:Landroid/widget/EditText;

.field private mCurrentCertainDate:I

.field private mCurrentDatePicker:I

.field private mDateFormater:Ljava/text/DateFormat;

.field private mFromDate:J

.field private mFromPickerDialog:Landroid/app/DatePickerDialog;

.field private mFromText:Landroid/widget/EditText;

.field private mIsCancelDatePick:Z

.field private mIsClearDate:Z

.field private mSearchButton:Landroid/widget/Button;

.field private mToDate:J

.field private mToPickerDialog:Landroid/app/DatePickerDialog;

.field private mToText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    .line 91
    iput v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    .line 92
    iput-wide v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    .line 93
    iput-wide v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AdvancedSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->showCertainTimePickerDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AdvancedSearchActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->getTodayDate()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AdvancedSearchActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AdvancedSearchActivity;->getFromDate(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AdvancedSearchActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AdvancedSearchActivity;->processEditTouch(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/AdvancedSearchActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/AdvancedSearchActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/AdvancedSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/AdvancedSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/AdvancedSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/AdvancedSearchActivity;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/AdvancedSearchActivity;->setDate(III)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/mms/ui/AdvancedSearchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z

    return p1
.end method

.method private getFromDate(J)J
    .locals 3
    .parameter "toDate"

    .prologue
    .line 282
    const-string v0, "Mms/AdvancedSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromDate(): mCurrentCertainDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    packed-switch v0, :pswitch_data_0

    .line 291
    const-string v0, "Mms/AdvancedSearchActivity"

    const-string v1, "getFromDate(): error case!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 285
    :pswitch_0
    const-wide/32 v0, 0x5265c00

    sub-long v0, p1, v0

    goto :goto_0

    .line 287
    :pswitch_1
    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    goto :goto_0

    .line 289
    :pswitch_2
    const-wide v0, 0x9a7ec800L

    sub-long v0, p1, v0

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTodayDate()J
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 271
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 272
    .local v3, year:I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 273
    .local v2, month:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 274
    .local v1, day:I
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 275
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 276
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 278
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private initCertainTimePickerDialog()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I

    new-instance v3, Lcom/android/mms/ui/AdvancedSearchActivity$6;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$6;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/ui/AdvancedSearchActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$7;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    .line 256
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private initContent()V
    .locals 4

    .prologue
    .line 119
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mDateFormater:Ljava/text/DateFormat;

    .line 121
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 122
    .local v0, date:Ljava/util/Date;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    .line 123
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/AdvancedSearchActivity;->setDate(III)V

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    .line 125
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/AdvancedSearchActivity;->setDate(III)V

    .line 126
    return-void
.end method

.method private initDatePickerDialog()V
    .locals 11

    .prologue
    const/high16 v10, 0x104

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 298
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/android/mms/ui/AdvancedSearchActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$8;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/AdvancedSearchActivity$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$9;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->setDateRange(Landroid/app/DatePickerDialog;)V

    .line 313
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/android/mms/ui/AdvancedSearchActivity$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$10;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/AdvancedSearchActivity$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$11;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->setDateRange(Landroid/app/DatePickerDialog;)V

    .line 327
    return-void
.end method

.method private initResource()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f0f000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/AdvancedSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$1;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;

    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeSearchButton:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AdvancedSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$2;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromText:Landroid/widget/EditText;

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/AdvancedSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$3;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToText:Landroid/widget/EditText;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/AdvancedSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$4;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mSearchButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AdvancedSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AdvancedSearchActivity$5;-><init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method private processEditTouch(I)V
    .locals 3
    .parameter "pickerType"

    .prologue
    .line 210
    iput p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->initDatePickerDialog()V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->showDatePickerDialog(Landroid/app/DatePickerDialog;)V

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->showDatePickerDialog(Landroid/app/DatePickerDialog;)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v0, "Mms/AdvancedSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(): init date picker failed; type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 9
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 360
    const-string v4, "Mms/AdvancedSearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDate(): year = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", month = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", day = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDatePicker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsClearDate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsCancelDatePick = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z

    if-eqz v4, :cond_0

    .line 363
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsCancelDatePick:Z

    .line 364
    const-string v4, "Mms/AdvancedSearchActivity"

    const-string v5, "setDate(): cancel."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 368
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 369
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 370
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 371
    const/4 v4, 0x5

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 372
    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    .line 374
    .local v2, when:J
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    iget v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentDatePicker:I

    packed-switch v4, :pswitch_data_0

    .line 406
    :cond_1
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    goto :goto_0

    .line 372
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    .end local v2           #when:J
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_1

    .line 377
    .restart local v1       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v2       #when:J
    :pswitch_0
    iput-wide v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    .line 378
    iget-object v5, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromText:Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    if-eqz v4, :cond_3

    const-string v4, ""

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const-string v4, "Mms/AdvancedSearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDate(): mFromDate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-wide v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 381
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    const-wide/16 v4, 0x0

    :goto_4
    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    .line 382
    iget-object v5, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToText:Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    if-eqz v4, :cond_5

    const-string v4, ""

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const-string v4, "Mms/AdvancedSearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDate(): mToDate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v4, :cond_1

    .line 385
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v4, p1, p2, p3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto/16 :goto_2

    .line 378
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mDateFormater:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 381
    :cond_4
    const-wide/32 v4, 0x5265c00

    goto :goto_4

    .line 382
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mDateFormater:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 391
    :pswitch_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    const-wide/16 v4, 0x0

    :goto_6
    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    .line 392
    iget-object v5, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToText:Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    if-eqz v4, :cond_7

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v4, "Mms/AdvancedSearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDate(): mToDate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-wide v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 395
    iput-wide v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    .line 396
    iget-object v5, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromText:Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mIsClearDate:Z

    if-eqz v4, :cond_8

    const-string v4, ""

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const-string v4, "Mms/AdvancedSearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDate(): mFromDate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v4, p1, p2, p3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto/16 :goto_2

    .line 391
    :cond_6
    const-wide/32 v4, 0x5265c00

    goto/16 :goto_6

    .line 392
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mDateFormater:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 396
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mDateFormater:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDateRange(Landroid/app/DatePickerDialog;)V
    .locals 13
    .parameter "dialog"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 343
    .local v0, minTime:Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 345
    .local v10, maxTime:Landroid/text/format/Time;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7b2

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 347
    const/16 v2, 0x3b

    const/16 v3, 0x3b

    const/16 v4, 0x17

    const/16 v5, 0x1f

    const/16 v6, 0xb

    const/16 v7, 0x7f5

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 350
    .local v8, maxDate:J
    const-wide/16 v1, 0x3e7

    add-long/2addr v8, v1

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 353
    .local v11, minDate:J
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 355
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 357
    .end local v0           #minTime:Landroid/text/format/Time;
    .end local v8           #maxDate:J
    .end local v10           #maxTime:Landroid/text/format/Time;
    .end local v11           #minDate:J
    :cond_0
    return-void
.end method

.method private showCertainTimePickerDialog()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->initCertainTimePickerDialog()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimePickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    return-void
.end method

.method private showDatePickerDialog(Landroid/app/DatePickerDialog;)V
    .locals 1
    .parameter "datePickerDialog"

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 334
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 99
    const-string v0, "Mms/AdvancedSearchActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->initResource()V

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/AdvancedSearchActivity;->initContent()V

    .line 104
    const v0, 0x7f0b0201

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mFromPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity;->mToPickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    :cond_1
    return-void
.end method
