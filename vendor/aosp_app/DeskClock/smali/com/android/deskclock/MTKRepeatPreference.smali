.class public Lcom/android/deskclock/MTKRepeatPreference;
.super Landroid/preference/DialogPreference;
.source "MTKRepeatPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final ALL_DAYS_CODE:I = 0x7f

.field private static final ALL_DAYS_COUNT:I = 0x7

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MTKRepeatPreference"

.field static final WEEK_DAYS_CODE:I = 0x1f

.field private static final WEEK_DAYS_COUNT:I = 0x5


# instance fields
.field private final mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

.field private mEverydayButton:Landroid/widget/RadioButton;

.field private mListView:Landroid/widget/ListView;

.field private final mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

.field private mNoRepeatsButton:Landroid/widget/RadioButton;

.field private mRepeatAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekdaysButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 59
    new-instance v0, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 63
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 65
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, weekdays:[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    aget-object v0, v6, v3

    aput-object v0, v5, v1

    aget-object v0, v6, v4

    aput-object v0, v5, v2

    aget-object v0, v6, v7

    aput-object v0, v5, v3

    const/4 v0, 0x5

    aget-object v0, v6, v0

    aput-object v0, v5, v4

    const/4 v0, 0x6

    aget-object v0, v6, v0

    aput-object v0, v5, v7

    const/4 v0, 0x5

    const/4 v1, 0x7

    aget-object v1, v6, v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aget-object v1, v6, v2

    aput-object v1, v5, v0

    .line 72
    .local v5, values:[Ljava/lang/String;
    new-instance v0, Lcom/android/deskclock/MTKRepeatPreference$1;

    const v3, 0x1090013

    const v4, 0x1020014

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/MTKRepeatPreference$1;-><init>(Lcom/android/deskclock/MTKRepeatPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mRepeatAdapter:Landroid/widget/ArrayAdapter;

    .line 90
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTKRepeatPreference constructor: mNewDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/MTKRepeatPreference;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/MTKRepeatPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/deskclock/MTKRepeatPreference;->setRadioRepeatState(I)V

    return-void
.end method

.method private setRadioRepeatState(I)V
    .locals 5
    .parameter "daysOfWeek"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioRepeatState: daysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_1
    if-nez p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 176
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    const v0, 0x7f0e0054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    .line 179
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    const v0, 0x7f0e0055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    .line 181
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    const v0, 0x7f0e0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    .line 184
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mRepeatAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/deskclock/MTKRepeatPreference$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/MTKRepeatPreference$2;-><init>(Lcom/android/deskclock/MTKRepeatPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method

.method public getNewDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/deskclock/MTKRepeatPreference;->setupViews(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/deskclock/MTKRepeatPreference;->setRadioRepeatState(I)V

    .line 129
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView: mListView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mNewDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    const-string v1, "MTKRepeatPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged: buttonView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mNewDaysOfWeek = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDaysOfWeek = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p2, :cond_1

    .line 173
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 152
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v0, v5}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x5

    :goto_1
    if-ge v0, v6, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 156
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v0, v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 159
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 163
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v0, v5}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    .end local v0           #i:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 168
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v6, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 170
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v0, v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 99
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed: positiveResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mNewDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/deskclock/MTKRepeatPreference;->setRadioRepeatState(I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mWeekdaysButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mEverydayButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNoRepeatsButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 3
    .parameter "dow"

    .prologue
    .line 230
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDaysOfWeek: daysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 233
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 234
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public setNewDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 4
    .parameter "dow"

    .prologue
    .line 248
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewDaysOfWeek: dow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mNewDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 253
    return-void
.end method
