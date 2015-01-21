.class public Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;
.super Landroid/app/Activity;
.source "LargeWidgetAnimationActivity.java"


# static fields
.field private static final MSG_ANIM:I = 0x0

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_REAL_FINISH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LargeWidgetAnimationActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mProgressView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private percentOld:I

.field private step:I

.field private widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->step:I

    .line 66
    new-instance v0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$1;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->showAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setCircleVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setCircleVisible(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 115
    .local v1, visible:I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.appwidget.WidgetReceiver.largeCircleVisible"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "widget_circle_visible"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v2, "widget_circle_visible_id"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #visible:I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setWidgetTitle(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "widget_id"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private showAnimation()V
    .locals 2

    .prologue
    .line 91
    const v1, 0x7f04000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity$2;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "paramBundle"

    .prologue
    const/4 v11, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 133
    .local v4, localIntent:Landroid/content/Intent;
    const-string v9, "widget_id_key"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->widgetId:I

    .line 134
    const-string v9, "widget_mem_percent"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->percentOld:I

    .line 136
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "widget_id_key"

    iget v10, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->widgetId:I

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->percentOld:I

    if-lez v9, :cond_0

    .line 139
    const-string v9, "widget_mem_percent"

    iget v10, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->percentOld:I

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    :cond_0
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 143
    invoke-virtual {v4}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 144
    .local v6, localRect:Landroid/graphics/Rect;
    if-nez v6, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->finish()V

    .line 180
    :goto_0
    return-void

    .line 149
    :cond_1
    const v9, 0x7f030114

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setContentView(I)V

    .line 151
    const v9, 0x7f0e019e

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mProgressView:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 155
    .local v5, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 156
    const/4 v8, 0x0

    .line 158
    .local v8, sbar:I
    const/4 v0, 0x0

    .line 159
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 160
    .local v7, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 161
    .local v2, field:Ljava/lang/reflect/Field;
    :try_start_0
    const-string v9, "com.android.internal.R$dimen"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 163
    const-string v9, "status_bar_height"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 169
    .end local v7           #obj:Ljava/lang/Object;
    :goto_1
    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 170
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 171
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    const/16 v9, 0x33

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 173
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setFinishOnTouchOutside(Z)V

    .line 177
    const v9, 0x7f0a00d3

    invoke-direct {p0, v9}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setWidgetTitle(I)V

    .line 178
    iget-object v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    iget-object v9, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    const/16 v8, 0x26

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimationActivity;->setCircleVisible(Z)V

    .line 186
    return-void
.end method
