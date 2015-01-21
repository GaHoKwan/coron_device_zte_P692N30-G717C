.class public Lcom/zte/heartyservice/floater/ScreenLockMonitor;
.super Landroid/app/Activity;
.source "ScreenLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;,
        Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;
    }
.end annotation


# instance fields
.field private closeButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTitle:Landroid/widget/TextView;

.field needShowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ">;"
        }
    .end annotation
.end field

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private settingButton:Landroid/widget/Button;

.field private softlist:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->list:Ljava/util/List;

    .line 73
    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->softlist:Landroid/widget/ListView;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->needShowList:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$1;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$6;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$6;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->handler:Landroid/os/Handler;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method private bindMsg()V
    .locals 5

    .prologue
    .line 164
    sget-object v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    new-instance v2, Lcom/zte/heartyservice/floater/ScreenLockMonitor$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$5;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->needShowList:Ljava/util/List;

    sget-object v2, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->softlist:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->needShowList:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->softlist:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 104
    const v3, 0x7f0300e7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->setContentView(I)V

    .line 105
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 107
    const v3, 0x7f0e0336

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mTitle:Landroid/widget/TextView;

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v5, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->refFormatNowDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->refFormatNowDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0660

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iput-object p0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    const v3, 0x7f0e0337

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->softlist:Landroid/widget/ListView;

    .line 120
    const v3, 0x7f0e00a3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->closeButton:Landroid/widget/Button;

    .line 121
    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->closeButton:Landroid/widget/Button;

    new-instance v4, Lcom/zte/heartyservice/floater/ScreenLockMonitor$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$2;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f0e00a4

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->settingButton:Landroid/widget/Button;

    .line 129
    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->settingButton:Landroid/widget/Button;

    new-instance v4, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$3;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f0e019a

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 141
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v3, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$4;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 159
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->bindMsg()V

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    const-string v0, ""

    const-string v1, "stopping xx ScreenLockMonitor Background Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 315
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public refFormatNowDate(J)Ljava/lang/String;
    .locals 6
    .parameter "m"

    .prologue
    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 279
    .local v1, mHour:I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 283
    .local v2, mMinutes:I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, retStrFormatNowDate:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 288
    .end local v3           #retStrFormatNowDate:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #retStrFormatNowDate:Ljava/lang/String;
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method
