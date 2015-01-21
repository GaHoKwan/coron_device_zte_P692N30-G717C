.class public Lcom/android/calendar/alerts/QuickResponseActivity;
.super Landroid/app/ListActivity;
.source "QuickResponseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;
    }
.end annotation


# static fields
.field public static final EXTRA_EVENT_ID:Ljava/lang/String; = "eventId"

.field private static final TAG:Ljava/lang/String; = "QuickResponseActivity"

.field static mEventId:J


# instance fields
.field private mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v5, -0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v3, "eventId"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    .line 60
    sget-wide v3, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-static {p0}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, responses:[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 73
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 80
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040034

    iget-object v5, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 100
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 87
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 88
    .local v0, body:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v0, v1, p3

    .line 93
    :cond_0
    new-instance v1, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;

    sget-wide v2, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;-><init>(Lcom/android/calendar/alerts/QuickResponseActivity;JLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method
