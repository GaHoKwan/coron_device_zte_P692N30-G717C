.class public Lcn/com/zte/nlt/CallInfoFloatView;
.super Landroid/widget/TextView;
.source "CallInfoFloatView.java"


# static fields
.field private static instance:Lcn/com/zte/nlt/CallInfoFloatView;


# instance fields
.field private mTouchStartX:F

.field private mTouchStartY:F

.field private preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

.field private ref:I

.field private screenWidth:I

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcn/com/zte/nlt/CallInfoFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wm:Landroid/view/WindowManager;

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 40
    iget-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->screenWidth:I

    .line 41
    new-instance v0, Lcn/com/zte/nlt/utils/FloatViewPreferences;

    invoke-direct {v0, p1}, Lcn/com/zte/nlt/utils/FloatViewPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/CallInfoFloatView;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcn/com/zte/nlt/CallInfoFloatView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/zte/nlt/CallInfoFloatView;->instance:Lcn/com/zte/nlt/CallInfoFloatView;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcn/com/zte/nlt/CallInfoFloatView;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/CallInfoFloatView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/nlt/CallInfoFloatView;->instance:Lcn/com/zte/nlt/CallInfoFloatView;

    .line 48
    :cond_0
    sget-object v0, Lcn/com/zte/nlt/CallInfoFloatView;->instance:Lcn/com/zte/nlt/CallInfoFloatView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTextWidth(Ljava/lang/String;)I
    .locals 4
    .parameter "showText"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcn/com/zte/nlt/CallInfoFloatView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 126
    .local v0, paint:Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 127
    .local v1, width:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 128
    return v1
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->x:F

    iget v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 79
    iget-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->y:F

    iget v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    iget-object v0, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method


# virtual methods
.method public dismissCallInfo()V
    .locals 2

    .prologue
    .line 132
    iget v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->ref:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->ref:I

    .line 133
    iget v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->ref:I

    if-nez v1, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcn/com/zte/nlt/CallInfoFloatView;->ref:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->x:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/high16 v3, 0x41c8

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->y:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 74
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 58
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartX:F

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartY:F

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-direct {p0}, Lcn/com/zte/nlt/CallInfoFloatView;->updateViewPosition()V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 67
    .local v0, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, -0x19

    .line 68
    .local v1, rawY:I
    iget-object v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

    iget v3, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartX:F

    float-to-int v3, v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->savePositionX(I)V

    .line 69
    iget-object v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

    iget v3, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartY:F

    float-to-int v3, v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->savePositionY(I)V

    .line 70
    invoke-direct {p0}, Lcn/com/zte/nlt/CallInfoFloatView;->updateViewPosition()V

    .line 71
    const/4 v2, 0x0

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartY:F

    iput v2, p0, Lcn/com/zte/nlt/CallInfoFloatView;->mTouchStartX:F

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showCallInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "callInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(ZTE)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, showText:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcn/com/zte/nlt/CallInfoFloatView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0, v3}, Lcn/com/zte/nlt/CallInfoFloatView;->getTextWidth(Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, textWidth:I
    const/high16 v5, -0x100

    invoke-virtual {p0, v5}, Lcn/com/zte/nlt/CallInfoFloatView;->setTextColor(I)V

    .line 90
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcn/com/zte/nlt/CallInfoFloatView;->setGravity(I)V

    .line 91
    const v5, 0x7f020021

    invoke-virtual {p0, v5}, Lcn/com/zte/nlt/CallInfoFloatView;->setBackgroundResource(I)V

    .line 95
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 96
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 103
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x28

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v6, v4, 0x64

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x5e

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

    invoke-virtual {v5}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->getPositionX()I

    move-result v1

    .line 107
    .local v1, savedX:I
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->preferences:Lcn/com/zte/nlt/utils/FloatViewPreferences;

    invoke-virtual {v5}, Lcn/com/zte/nlt/utils/FloatViewPreferences;->getPositionY()I

    move-result v2

    .line 108
    .local v2, savedY:I
    if-eq v1, v7, :cond_0

    if-ne v2, v7, :cond_1

    .line 109
    :cond_0
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcn/com/zte/nlt/CallInfoFloatView;->screenWidth:I

    iget-object v7, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x78

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wm:Landroid/view/WindowManager;

    iget-object v6, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, p0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v5, 0x1

    iput v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->ref:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    return-void

    .line 112
    :cond_1
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 113
    iget-object v5, p0, Lcn/com/zte/nlt/CallInfoFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
