.class public Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final DAY_ORDER:[I

.field private final mBackgroundColor:I

.field private final mBackgroundColorSelected:I

.field private final mColorDim:I

.field private final mColorLit:I

.field private final mContext:Landroid/content/Context;

.field private final mExpanded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mHasVibrator:Z

.field private final mList:Landroid/widget/ListView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLongWeekDayStrings:[Ljava/lang/String;

.field private mPreviousDaysOfWeekMap:Landroid/os/Bundle;

.field private final mRepeatChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRobotoBold:Landroid/graphics/Typeface;

.field private final mRobotoNormal:Landroid/graphics/Typeface;

.field private mScrollAlarmId:I

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSelectedAlarms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortWeekDayStrings:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;[I[I[ILandroid/os/Bundle;Landroid/widget/ListView;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "expandedIds"
    .parameter "repeatCheckedIds"
    .parameter "selectedAlarms"
    .parameter "previousDaysOfWeekMap"
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 521
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    .line 522
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 462
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    .line 463
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    .line 464
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    .line 465
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 470
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    .line 505
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    .line 506
    new-instance v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    .line 523
    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    .line 524
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 525
    iput-object p7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    .line 527
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 528
    .local v0, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    .line 529
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    .line 531
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 532
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    .line 533
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    .line 534
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColorSelected:I

    .line 535
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColor:I

    .line 538
    const-string v2, "sans-serif-condensed"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    .line 539
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    .line 541
    if-eqz p3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-direct {p0, p3, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 544
    :cond_0
    if-eqz p4, :cond_1

    .line 545
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-direct {p0, p4, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 547
    :cond_1
    if-eqz p6, :cond_2

    .line 548
    iput-object p6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 550
    :cond_2
    if-eqz p5, :cond_3

    .line 551
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-direct {p0, p5, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 554
    :cond_3
    const-string v2, "vibrator"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mHasVibrator:Z

    .line 556
    return-void

    .line 470
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    iput p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
    .locals 8
    .parameter "itemHolder"
    .parameter "alarm"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 768
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 769
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    :goto_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 787
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    iget v4, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget-object v3, v3, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 788
    :cond_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 789
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 795
    :goto_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 836
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {p0, p1, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 837
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 838
    move v0, v1

    .line 840
    .local v0, buttonIndex:I
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;ILcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 772
    .end local v0           #buttonIndex:I
    .end local v1           #i:I
    :cond_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    const v4, 0x7f0d0018

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 773
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 792
    :cond_2
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 793
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 872
    .restart local v1       #i:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mHasVibrator:Z

    if-nez v3, :cond_6

    .line 873
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 886
    :goto_3
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 918
    const/4 v2, 0x0

    .line 919
    .local v2, ringtone:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 920
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 921
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alarm_alert"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 922
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 926
    :cond_4
    if-nez v2, :cond_5

    .line 927
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 930
    :cond_5
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$13;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$13;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 945
    return-void

    .line 875
    .end local v2           #ringtone:Ljava/lang/String;
    :cond_6
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-boolean v3, p2, Lcom/android/deskclock/Alarm;->vibrate:Z

    if-nez v3, :cond_7

    .line 877
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 878
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    :goto_4
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    .line 880
    :cond_7
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 881
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method private buildHashSetFromArray([ILjava/util/HashSet;)V
    .locals 5
    .parameter "ids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1169
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method private collapseAlarm(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget v1, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1113
    return-void
.end method

.method private doLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClock;->access$2600(Lcom/android/deskclock/AlarmClock;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 974
    const/4 v0, 0x0

    .line 982
    :goto_0
    return v0

    .line 976
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 977
    if-eqz p1, :cond_1

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->toggleSelectState(Landroid/view/View;)V

    .line 979
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 980
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #calls: Lcom/android/deskclock/AlarmClock;->updateActionMode()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmClock;->access$100(Lcom/android/deskclock/AlarmClock;)V

    .line 982
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 2
    .parameter "itemHolder"

    .prologue
    .line 1091
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    new-instance v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$14;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$14;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    .line 1104
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    .line 1105
    return-void
.end method

.method private getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, r:Landroid/media/Ringtone;
    const-string v1, ""

    .line 1032
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_alert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1034
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->usingDefaultRingtone()Ljava/lang/String;

    move-result-object v1

    .line 1049
    :goto_0
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1053
    :cond_0
    return-object v1

    .line 1038
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/deskclock/AlarmClock;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1039
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1041
    :cond_2
    if-eqz v0, :cond_3

    .line 1042
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$2700(Lcom/android/deskclock/AlarmClock;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->usingDefaultRingtone()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "v"

    .prologue
    .line 999
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0019

    if-eq v0, v1, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .restart local p1
    goto :goto_0

    .line 1002
    :cond_0
    return-object p1
.end method

.method private getViewById(I)Landroid/view/View;
    .locals 4
    .parameter "id"

    .prologue
    .line 1121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1122
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1123
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1124
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    move-object v0, v3

    check-cast v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    .line 1125
    .local v0, h:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    if-ne v3, p1, :cond_0

    .line 1130
    .end local v0           #h:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 1121
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z
    .locals 2
    .parameter "alarm"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget v1, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V
    .locals 2
    .parameter "holder"
    .parameter "enabled"

    .prologue
    .line 950
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f80

    .line 951
    .local v0, alpha:F
    :goto_0
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 952
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 953
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 954
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 955
    return-void

    .line 950
    .end local v0           #alpha:F
    :cond_0
    const/high16 v0, 0x3f00

    goto :goto_0
.end method

.method private turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .parameter "holder"
    .parameter "dayIndex"

    .prologue
    .line 1010
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1011
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1013
    return-void
.end method

.method private turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .parameter "holder"
    .parameter "dayIndex"

    .prologue
    .line 1016
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1017
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1018
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1019
    return-void
.end method

.method private updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 3
    .parameter "holder"
    .parameter "daysOfWeek"

    .prologue
    .line 958
    invoke-virtual {p2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getSetDays()Ljava/util/HashSet;

    move-result-object v1

    .line 959
    .local v1, setDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 960
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    .line 959
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    goto :goto_1

    .line 966
    :cond_1
    return-void
.end method

.method private usingDefaultRingtone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1057
    const/4 v2, 0x0

    .line 1059
    .local v2, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1060
    .local v1, r:Landroid/media/Ringtone;
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1062
    .local v0, defaultUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/deskclock/AlarmPreference;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 1065
    :cond_0
    if-eqz v1, :cond_3

    .line 1066
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1075
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 1078
    :cond_2
    return-object v2

    .line 1067
    :cond_3
    if-eqz v0, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/deskclock/AlarmPreference;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 1071
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 635
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 636
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    .line 637
    .local v3, itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    iput-object v0, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    .line 641
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 642
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-boolean v8, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 643
    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v8, v8, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 644
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColorSelected:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 645
    invoke-direct {p0, v3, v10}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    .line 646
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 652
    :goto_0
    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    .line 669
    .local v4, onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 670
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    iget v8, v0, Lcom/android/deskclock/Alarm;->hour:I

    iget v9, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v5, v8, v9}, Lcom/android/deskclock/DigitalClock;->updateTime(II)V

    .line 673
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    .line 674
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$3;

    invoke-direct {v8, p0, v0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$3;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 688
    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 690
    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$4;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$4;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 704
    const-string v1, ""

    .line 706
    .local v1, colons:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v5, v8, v6}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, daysOfWeekStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 708
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v9, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v8, v9}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 712
    const-string v1, ": "

    .line 713
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$5;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$5;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 730
    :goto_3
    iget-object v5, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 731
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v6, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;

    invoke-direct {v6, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 752
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 753
    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    .line 755
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 756
    new-instance v5, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;

    invoke-direct {v5, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    return-void

    .line 648
    .end local v1           #colons:Ljava/lang/String;
    .end local v2           #daysOfWeekStr:Ljava/lang/String;
    .end local v4           #onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_1
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 649
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColor:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 650
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    goto/16 :goto_0

    .restart local v4       #onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_2
    move v5, v7

    .line 688
    goto/16 :goto_1

    :cond_3
    move v5, v7

    .line 690
    goto/16 :goto_2

    .line 727
    .restart local v1       #colons:Ljava/lang/String;
    .restart local v2       #daysOfWeekStr:Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 749
    :cond_5
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public clearSelectedAlarms()V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1186
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1187
    return-void
.end method

.method public deleteSelectedAlarms()V
    .locals 5

    .prologue
    .line 1174
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Integer;

    .line 1175
    .local v2, ids:[Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1176
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1177
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1180
    .end local v1           #id:I
    :cond_0
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm([Ljava/lang/Integer;)V
    invoke-static {v4, v2}, Lcom/android/deskclock/AlarmClock;->access$2800(Lcom/android/deskclock/AlarmClock;[Ljava/lang/Integer;)V

    .line 1181
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->clearSelectedAlarms()V

    .line 1182
    return-void
.end method

.method public getExpandedArray()[I
    .locals 5

    .prologue
    .line 1134
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1135
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1136
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1137
    .local v1, id:I
    aput v1, v2, v3

    .line 1138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1140
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getPreviousDaysOfWeekMap()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRepeatArray()[I
    .locals 5

    .prologue
    .line 1154
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1155
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1156
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1157
    .local v1, id:I
    aput v1, v2, v3

    .line 1158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getSelectedAlarmsArray()[I
    .locals 5

    .prologue
    .line 1144
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1145
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1146
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1147
    .local v1, id:I
    aput v1, v2, v3

    .line 1148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1150
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getSelectedItemsNum()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    .line 575
    :cond_0
    if-nez p2, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, v:Landroid/view/View;
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 580
    .end local v0           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_1

    .line 584
    .end local v0           #v:Landroid/view/View;
    :cond_3
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 593
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v7, 0x7f040007

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 596
    .local v4, view:Landroid/view/View;
    new-instance v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    .line 597
    .local v2, holder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    const v6, 0x7f0e0019

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    .line 598
    const v6, 0x7f0e001a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/DigitalClock;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    .line 599
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v6, v9}, Lcom/android/deskclock/DigitalClock;->setLive(Z)V

    .line 600
    const v6, 0x7f0e001b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    .line 601
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 602
    const v6, 0x7f0e001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    .line 603
    const v6, 0x7f0e0018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    .line 604
    const v6, 0x7f0e0020

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    .line 605
    const v6, 0x7f0e001d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    .line 606
    const v6, 0x7f0e0022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    .line 607
    const v6, 0x7f0e0021

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    .line 608
    const v6, 0x7f0e001c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    .line 609
    const v6, 0x7f0e0023

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    .line 612
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v6, 0x7

    if-ge v3, v6, :cond_0

    .line 613
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v7, 0x7f040010

    iget-object v8, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 615
    .local v5, viewgroup:Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 616
    .local v0, button:Landroid/widget/ToggleButton;
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    aget v1, v6, v3

    .line 617
    .local v1, dayToShowIndex:I
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 622
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aput-object v0, v6, v3

    .line 623
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aput-object v5, v6, v3

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    .end local v0           #button:Landroid/widget/ToggleButton;
    .end local v1           #dayToShowIndex:I
    .end local v5           #viewgroup:Landroid/view/ViewGroup;
    :cond_0
    const v6, 0x7f0e0025

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    .line 626
    const v6, 0x7f0e0026

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    .line 627
    const v6, 0x7f0e0024

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    .line 629
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 630
    return-object v4
.end method

.method public removeSelectedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 564
    return-void
.end method

.method public setNewAlarm(I)V
    .locals 2
    .parameter "alarmId"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1083
    return-void
.end method

.method public toggleSelectState(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 988
    if-eqz p1, :cond_0

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    .line 990
    .local v0, id:I
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 996
    .end local v0           #id:I
    :cond_0
    :goto_0
    return-void

    .line 993
    .restart local v0       #id:I
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
