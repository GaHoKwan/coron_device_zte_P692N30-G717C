.class public Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;
.super Landroid/app/Activity;
.source "WidgetAnimationActivity.java"


# static fields
.field private static final MSG_ANIM:I = 0x0

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_REAL_FINISH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WidgetAnimationActivity"


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

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->step:I

    .line 66
    new-instance v0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity$1;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->showAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->setCircleVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setCircleVisible(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 112
    .local v1, visible:I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.appwidget.WidgetReceiver.circleVisible"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "widget_circle_visible"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v2, "widget_circle_visible_id"

    iget v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->widgetId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void

    .line 111
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
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "widget_id"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private showAnimation()V
    .locals 2

    .prologue
    .line 88
    const v1, 0x7f04000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 90
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity$2;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "paramBundle"

    .prologue
    const/4 v11, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 130
    .local v3, localIntent:Landroid/content/Intent;
    const-string v8, "widget_id_key"

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->widgetId:I

    .line 131
    const-string v8, "widget_mem_percent"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->percentOld:I

    .line 140
    invoke-virtual {v3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 141
    .local v5, localRect:Landroid/graphics/Rect;
    if-nez v5, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 146
    :cond_0
    const v8, 0x7f030115

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->setContentView(I)V

    .line 148
    const v8, 0x7f0e019e

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mProgressView:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 152
    .local v4, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 153
    const/4 v7, 0x0

    .line 155
    .local v7, sbar:I
    const/4 v0, 0x0

    .line 156
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 157
    .local v6, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 158
    .local v2, field:Ljava/lang/reflect/Field;
    :try_start_0
    const-string v8, "com.android.internal.R$dimen"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 160
    const-string v8, "status_bar_height"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 166
    .end local v6           #obj:Ljava/lang/Object;
    :goto_1
    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 168
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 169
    const/16 v8, 0x33

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 170
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->setFinishOnTouchOutside(Z)V

    .line 174
    const v8, 0x7f0a00d3

    invoke-direct {p0, v8}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->setWidgetTitle(I)V

    .line 175
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    iget-object v8, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const/16 v7, 0x26

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/appwidget/WidgetAnimationActivity;->setCircleVisible(Z)V

    .line 183
    return-void
.end method
