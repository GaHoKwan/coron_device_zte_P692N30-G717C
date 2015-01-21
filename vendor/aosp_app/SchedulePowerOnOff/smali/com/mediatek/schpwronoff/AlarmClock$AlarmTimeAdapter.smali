.class Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/schpwronoff/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/schpwronoff/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/mediatek/schpwronoff/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/mediatek/schpwronoff/AlarmClock;

    .line 95
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 96
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    .line 114
    const-string v8, "AlarmClock"

    const-string v9, "bindView"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {v0, p3}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 116
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    move-object v2, p2

    .line 117
    .local v2, cont:Landroid/content/Context;
    const v8, 0x7f0a0008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 118
    .local v6, onButton:Landroid/widget/CheckBox;
    if-eqz v6, :cond_0

    .line 119
    iget-boolean v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 120
    new-instance v8, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;

    invoke-direct {v8, p0, v2, v0}, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;-><init>(Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    const v8, 0x7f0a0001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 133
    .local v7, onOffView:Landroid/widget/ImageView;
    if-eqz v7, :cond_1

    .line 134
    iget-object v8, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/mediatek/schpwronoff/AlarmClock;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const v8, 0x7f020001

    :goto_0
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_1
    const v8, 0x7f0a0002

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/schpwronoff/DigitalClock;

    .line 141
    .local v5, digitalClock:Lcom/mediatek/schpwronoff/DigitalClock;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 142
    .local v1, c:Ljava/util/Calendar;
    const/16 v8, 0xb

    iget v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v8, 0xc

    iget v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 144
    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v5, v1}, Lcom/mediatek/schpwronoff/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 149
    :cond_2
    const v8, 0x7f0a0007

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 150
    .local v4, daysOfWeekView:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v8, p2, v11}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, daysOfWeekStr:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 152
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 153
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_3
    :goto_1
    return-void

    .line 134
    .end local v1           #c:Ljava/util/Calendar;
    .end local v3           #daysOfWeekStr:Ljava/lang/String;
    .end local v4           #daysOfWeekView:Landroid/widget/TextView;
    .end local v5           #digitalClock:Lcom/mediatek/schpwronoff/DigitalClock;
    :cond_4
    const/high16 v8, 0x7f02

    goto :goto_0

    .line 156
    .restart local v1       #c:Ljava/util/Calendar;
    .restart local v3       #daysOfWeekStr:Ljava/lang/String;
    .restart local v4       #daysOfWeekView:Landroid/widget/TextView;
    .restart local v5       #digitalClock:Lcom/mediatek/schpwronoff/DigitalClock;
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/mediatek/schpwronoff/AlarmClock;

    #getter for: Lcom/mediatek/schpwronoff/AlarmClock;->mFactory:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/mediatek/schpwronoff/AlarmClock;->access$000(Lcom/mediatek/schpwronoff/AlarmClock;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, ret:Landroid/view/View;
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/mediatek/schpwronoff/AlarmClock;

    #getter for: Lcom/mediatek/schpwronoff/AlarmClock;->mAm:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/schpwronoff/AlarmClock;->access$100(Lcom/mediatek/schpwronoff/AlarmClock;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/mediatek/schpwronoff/AlarmClock;

    #getter for: Lcom/mediatek/schpwronoff/AlarmClock;->mPm:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/schpwronoff/AlarmClock;->access$200(Lcom/mediatek/schpwronoff/AlarmClock;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/schpwronoff/DigitalClock;

    .line 105
    .local v0, digitalClock:Lcom/mediatek/schpwronoff/DigitalClock;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, v4}, Lcom/mediatek/schpwronoff/DigitalClock;->setLive(Z)V

    .line 108
    :cond_0
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v1
.end method
