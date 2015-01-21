.class Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimersListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimersCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field

.field mmPrefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    .line 285
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimersCompare:Ljava/util/Comparator;

    .line 122
    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    .line 124
    return-void
.end method


# virtual methods
.method public addTimer(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 258
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment addTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 261
    return-void
.end method

.method public deleteTimer(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 145
    const-string v2, "AlarmClock"

    const-string v3, "TimerFragment deleteTimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 149
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    if-ne v2, p1, :cond_2

    .line 150
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerListItem;->stop()V

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerObj;->deleteFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 154
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    return-void

    .line 146
    .restart local v1       #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findTimerPositionById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 164
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    if-ne v2, p1, :cond_0

    .line 168
    .end local v0           #i:I
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :goto_1
    return v0

    .line 162
    .restart local v0       #i:I
    .restart local v1       #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "p"

    .prologue
    .line 138
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerObj;

    iget v0, v0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    int-to-long v0, v0

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 181
    new-instance v3, Lcom/android/deskclock/timer/TimerListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;-><init>(Landroid/content/Context;)V

    .line 183
    .local v3, v:Lcom/android/deskclock/timer/TimerListItem;
    invoke-virtual/range {p0 .. p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/deskclock/timer/TimerObj;

    .line 184
    .local v23, o:Lcom/android/deskclock/timer/TimerObj;
    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    .line 185
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    .line 186
    .local v6, timeLeft:J
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v8, 0x1

    .line 187
    .local v8, drawRed:Z
    :goto_0
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 188
    const/4 v4, 0x1

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 189
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 204
    :goto_1
    :pswitch_0
    const v4, 0x7f0e0076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/deskclock/timer/CountingTimerView;

    .line 206
    .local v18, countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Lcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V

    .line 214
    const v4, 0x7f0e0098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    .line 215
    .local v19, delete:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x3

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    const v4, 0x7f0e0096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 218
    .local v24, plusOne:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x2

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    const v4, 0x7f0e0097

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 221
    .local v25, stop:Landroid/widget/TextView;
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v23

    #calls: Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    invoke-static {v4, v0}, Lcom/android/deskclock/timer/TimerFragment;->access$100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 225
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->registerStopTextView(Landroid/widget/TextView;)V

    .line 226
    const v4, 0x7f0e0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/deskclock/CircleButtonsLinearLayout;

    .line 228
    .local v9, circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    const v10, 0x7f0e0092

    const v11, 0x7f0e0096

    const v12, 0x7f0e0098

    const v13, 0x7f0e0097

    const v14, 0x7f090047

    const v15, 0x7f090048

    const v16, 0x7f0e0093

    const v17, 0x7f0e0094

    invoke-virtual/range {v9 .. v17}, Lcom/android/deskclock/CircleButtonsLinearLayout;->setCircleTimerViewIds(IIIIIIII)V

    .line 233
    const v4, 0x7f0e0093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    .line 234
    .local v20, label:Landroid/widget/FrameLayout;
    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    .line 235
    .local v21, labelIcon:Landroid/widget/ImageButton;
    const v4, 0x7f0e0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 236
    .local v22, labelText:Landroid/widget/TextView;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/deskclock/DeskClock;

    if-eqz v4, :cond_2

    .line 245
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Landroid/app/Activity;Landroid/widget/TextView;Lcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    :goto_3
    return-object v3

    .line 186
    .end local v8           #drawRed:Z
    .end local v9           #circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    .end local v18           #countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    .end local v19           #delete:Landroid/widget/ImageButton;
    .end local v20           #label:Landroid/widget/FrameLayout;
    .end local v21           #labelIcon:Landroid/widget/ImageButton;
    .end local v22           #labelText:Landroid/widget/TextView;
    .end local v24           #plusOne:Landroid/widget/ImageButton;
    .end local v25           #stop:Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 191
    .restart local v8       #drawRed:Z
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    goto/16 :goto_1

    .line 194
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->timesUp()V

    goto/16 :goto_1

    .line 197
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->done()V

    goto/16 :goto_1

    .line 240
    .restart local v9       #circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    .restart local v18       #countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    .restart local v19       #delete:Landroid/widget/ImageButton;
    .restart local v20       #label:Landroid/widget/FrameLayout;
    .restart local v21       #labelIcon:Landroid/widget/ImageButton;
    .restart local v22       #labelText:Landroid/widget/TextView;
    .restart local v24       #plusOne:Landroid/widget/ImageButton;
    .restart local v25       #stop:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 252
    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 271
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 264
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerFragment Adapter onSaveInstanceState mTimers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 266
    return-void
.end method

.method public removeTimer(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .parameter "timerObj"

    .prologue
    .line 172
    iget v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {p0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v0

    .line 173
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    :cond_0
    return-void
.end method

.method public saveGlobalState()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "AlarmClock"

    const-string v1, "TimerFragment saveGlobalState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 276
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimersCompare:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 283
    :cond_0
    return-void
.end method
