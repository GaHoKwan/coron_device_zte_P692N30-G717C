.class public Lcom/android/mipop/b/b;
.super Lcom/android/mipop/b/l;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private aE:Z

.field private aF:Z

.field private aG:I

.field private aH:I

.field private aI:I

.field private mLastY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mipop/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v1, 0x7f020002

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/mipop/b/l;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/mipop/b/b;->aE:Z

    iput-boolean v0, p0, Lcom/android/mipop/b/b;->aF:Z

    iput v0, p0, Lcom/android/mipop/b/b;->aG:I

    iput v0, p0, Lcom/android/mipop/b/b;->mLastY:I

    iput v0, p0, Lcom/android/mipop/b/b;->aH:I

    iput v0, p0, Lcom/android/mipop/b/b;->aI:I

    sget-object v0, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/b/b;->a(Ljava/lang/String;Lcom/android/mipop/b/l;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/b;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/mipop/b/b;->setImageResource(I)V

    const v0, 0x7f020003

    invoke-virtual {p0, v1, v0}, Lcom/android/mipop/b/b;->n(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/b/b;->r()V

    return-void
.end method

.method private r()V
    .locals 5

    sget-object v0, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mipop_long_clicked_operater_first"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "huangwei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mLongClickedOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->aq()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/mipop/api/MyApplication;->i(I)V

    const-string v0, "mipop_long_clicked_operater_first"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/mipop/b/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mipop/b/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mipop/a/g;->M()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/mipop/b/l;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :pswitch_1
    const-string v3, "OUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "back ACTION_DOWN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mipop/b/b;->aE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/android/mipop/b/b;->hi:Z

    iput v1, p0, Lcom/android/mipop/b/b;->aG:I

    iput v2, p0, Lcom/android/mipop/b/b;->mLastY:I

    iput v1, p0, Lcom/android/mipop/b/b;->aH:I

    iput v2, p0, Lcom/android/mipop/b/b;->aI:I

    iput-boolean v0, p0, Lcom/android/mipop/b/b;->aF:Z

    goto :goto_0

    :pswitch_2
    const-string v0, "OUT"

    const-string v1, "back ACTION_OUTSIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lcom/android/mipop/b/b;->aG:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/mipop/b/b;->mLastY:I

    sub-int v4, v2, v4

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_2

    :cond_1
    const-string v5, "MBack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseX/offsetX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/b/b;->cD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/mipop/b/b;->cD:I

    add-int/2addr v3, v5

    sput v3, Lcom/android/mipop/b/b;->cD:I

    sget v3, Lcom/android/mipop/b/b;->cE:I

    add-int/2addr v3, v4

    sput v3, Lcom/android/mipop/b/b;->cE:I

    sget v3, Lcom/android/mipop/b/b;->cD:I

    sget v4, Lcom/android/mipop/b/b;->cE:I

    invoke-static {v3, v4}, Lcom/android/mipop/a/g;->f(II)V

    iput v1, p0, Lcom/android/mipop/b/b;->aG:I

    iput v2, p0, Lcom/android/mipop/b/b;->mLastY:I

    :cond_2
    iget v3, p0, Lcom/android/mipop/b/b;->aH:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v3, Lcom/android/mipop/b/a;->X:I

    if-gt v1, v3, :cond_3

    iget v1, p0, Lcom/android/mipop/b/b;->aI:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/android/mipop/b/a;->X:I

    if-le v1, v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mipop/b/b;->bq()V

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "Suhao.Click"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeterBacd.UP, MOVE_MAX_SIZE/baseX= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/b/a;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/b/b;->cD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mipop/b/b;->aE:Z

    if-nez v0, :cond_4

    :cond_4
    sput-boolean v4, Lcom/android/mipop/b/b;->hi:Z

    iput-boolean v4, p0, Lcom/android/mipop/b/b;->aE:Z

    iput-boolean v4, p0, Lcom/android/mipop/b/b;->aF:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public p()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "Suhao.Click"

    const-string v1, "back click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipop_click_times"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mipop_long_clicked"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "huangwei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mClickTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLongClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/mipop/b/b;->playSoundEffect(I)V

    new-instance v2, Lcom/android/mipop/b/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/mipop/b/d;-><init>(Lcom/android/mipop/b/b;IZ)V

    invoke-virtual {v2}, Lcom/android/mipop/b/d;->start()V

    return-void
.end method

.method public q()V
    .locals 3

    const-string v0, "HouJiong"

    const-string v1, "startIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mipop_long_clicked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/mipop/b/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "HouJiong"

    const-string v1, "startIntent end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
