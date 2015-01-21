.class public Lcom/android/music/WeekSelector;
.super Landroid/app/Activity;
.source "WeekSelector.java"


# static fields
.field private static final ALERT_DIALOG_KEY:I = 0x0

.field private static final EDITTEXT_POSITION:I = 0x0

.field private static final UPDATE_INTERVAL:I = 0xc8

.field private static final WEEK_END:I = 0xc

.field private static final WEEK_START:I = 0x1


# instance fields
.field private final mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

.field mChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mCurrentSelectedPos:I

.field private mNumberPicker:Landroid/widget/NumberPicker;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Lcom/android/music/WeekSelector$1;

    invoke-direct {v0, p0}, Lcom/android/music/WeekSelector$1;-><init>(Lcom/android/music/WeekSelector;)V

    iput-object v0, p0, Lcom/android/music/WeekSelector;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 161
    new-instance v0, Lcom/android/music/WeekSelector$2;

    invoke-direct {v0, p0}, Lcom/android/music/WeekSelector$2;-><init>(Lcom/android/music/WeekSelector;)V

    iput-object v0, p0, Lcom/android/music/WeekSelector;->mChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/WeekSelector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/WeekSelector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/WeekSelector;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 81
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/WeekSelector;->mView:Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mView:Landroid/view/View;

    const v4, 0x7f0c0040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 86
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lcom/android/music/WeekSelector;->mChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 87
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 89
    const-string v3, "numweeks"

    invoke-static {p0, v3, v7}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, def:I
    if-eqz p1, :cond_2

    const-string v3, "numweeks"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, pos:I
    :goto_0
    iput v1, p0, Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I

    .line 92
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 93
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 94
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 95
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 96
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 97
    iget-object v3, p0, Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 98
    .local v2, spinnerInput:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 109
    :cond_1
    return-void

    .end local v1           #pos:I
    .end local v2           #spinnerInput:Landroid/widget/EditText;
    :cond_2
    move v1, v0

    .line 90
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Lcom/android/music/MusicDialog;

    iget-object v1, p0, Lcom/android/music/WeekSelector;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/music/WeekSelector;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/music/MusicDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    .line 145
    .local v0, dialog:Lcom/android/music/MusicDialog;
    if-eqz v0, :cond_0

    .line 146
    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 147
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicDialog;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    invoke-virtual {v0, v3}, Lcom/android/music/MusicDialog;->setCancelable(Z)V

    .line 151
    invoke-virtual {v0}, Lcom/android/music/MusicDialog;->setSearchKeyListener()V

    .line 155
    .end local v0           #dialog:Lcom/android/music/MusicDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 113
    const-string v0, "numweeks"

    iget v1, p0, Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-void
.end method
